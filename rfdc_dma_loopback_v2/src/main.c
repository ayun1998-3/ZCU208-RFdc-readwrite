
/***************************** Include Files *********************************/
#include <stdio.h>
#include <stdarg.h>
#include "main.h"
#include "xparameters.h"
#include "xil_io.h"
#include "sleep.h"
#include "xstatus.h"
#include "xil_printf.h"

#include "xrfdc.h"
#include "LMK_display.h"
#include "LMX_display.h"
#include "xrfclk.h"

#include <metal/log.h>
#include <metal/sys.h>

#include "simple_poll.h"

/******************** Constant Definitions **********************************/
#define ENABLE_METAL_PRINTS

#define URAM_PLAY_BASE XPAR_HIER_PLAY_AXI_BRAM_CTRL_0_S_AXI_BASEADDR

// PLL debug defines. Will print all calculated values
#undef LMK_DEBUG
#undef LMX_DEBUG

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

void my_metal_default_log_handler(enum metal_log_level level,
			       const char *format, ...);

static int resetAllClk104(void);
void reverse32bArray(u32 *src, int size);
void printCLK104_settings(void);
void rfdcStartup(void);

/************************** Variable Definitions *****************************/

// VT100 esc sequences
char CHAR_ATTRIB_OFF[5] = "\x1B[0m";
char BOLD_ON[5]      	= "\x1B[1m";
char UNDERLINE_ON[5] 	= "\x1B[4m";
char BLINK_ON[5]        = "\x1B[5m";
char REVERSE_ON[5]    	= "\x1B[5m";
char CLR_SCREEN[5]   	= "\x1B[2J";

// data buffer used for reading PLL registers
static u32 data[256];

const char clkoutBrdNames[][18] = {
		"RFIN_RF1",   "RF1_ADC_SYNC",
		"NC",         "AMS_SYSREF",
		"RFIN_RF2",   "RF2_DAC_SYNC",
		"DAC_REFCLK", "DDR_PL_CAP_SYNC",
		"PL_CLK",     "PL_SYSREF",
		"NC",         "J10 SINGLE END",
		"ADC_REFCLK", "NC",
};

lmk_config_t lmkConfig;
lmx_config_t lmxConfig;

extern const u32 LMK_CKin[LMK_FREQ_NUM][LMK_COUNT];
extern const u32 LMX2594[][LMX2594_COUNT];

/*
 * Device instance definitions
 */

XRFdc RFdcInst;      /* RFdc driver instance */

/*****************************************************************************/
/**
*
* Main function
*
* TBD
*
* @param	None
*
* @return
*		- XST_SUCCESS if tests pass
*		- XST_FAILURE if fails.
*
* @note		None.
*
******************************************************************************/
int main(void)
{
	u32  Val;
	u32  Minor;
	u32  Major;
	int Status;
	XRFdc_Config *ConfigPtr;
  int lmkConfigIndex;

	// Initialize CLI commands structure

	xil_printf("\n\r###############################################\n\r");
	xil_printf("Hello RFSoC World!\n\r\n");


	// Display IP version
	Val = Xil_In32(RFDC_BASE + 0x00000);
	Major = (Val >> 24) & 0xFF;
	Minor = (Val >> 16) & 0xFF;

	xil_printf("RFDC IP Version: %d.%d\r\n",Major,Minor);
	//xil_printf("RFDC IP Major Version: %d\r\n",Major);
	//xil_printf("RFDC IP Minor Version: %d\r\n",Minor);

	// Configure ZCU208 clks
	xil_printf("\nConfiguring the data converter clocks...\r\n");

	// initialize and reset CLK104 devices on i2c and i2c muxes
	XRFClk_Init();

	if (resetAllClk104() == EXIT_FAILURE) {
		xil_printf("resetAllClk104() failed\n\r");
		return XST_FAILURE;
	}

	xil_printf("Configuring CLK104 LMK and LMX devices\r\n");

	/* Set config on all chips */
	// using below LMK config index
	lmkConfigIndex = 7;

	//LMX2594_FREQ_300M00_PD	if (XST_FAILURE == XRFClk_SetConfigOnAllChipsFromConfigId(lmkConfigIndex, LMX2594_FREQ_8192M00, LMX2594_FREQ_7864M32)) {
	if (XST_FAILURE == XRFClk_SetConfigOnAllChipsFromConfigId(lmkConfigIndex, LMX2594_FREQ_1474M56_PD, LMX2594_FREQ_1474M56_PD)) {
	printf("Failure in XRFClk_SetConfigOnAllChipsFromConfigId()\n\r");
		return XST_FAILURE;
	}

	// Print clock settings to the terminal
	printCLK104_settings();
	///////////////////////////////////////////////////
	/* Close spi connections to clk104 */
	XRFClk_Close();

    sleep(2);

#ifdef ENABLE_METAL_PRINTS
    xil_printf("=== Metal log enabled ===\n\r");

	struct metal_init_params init_param = {	\
			.log_handler	= my_metal_default_log_handler,	\
			.log_level		= METAL_LOG_DEBUG,			\

	};
#else
	struct metal_init_params init_param = METAL_INIT_DEFAULTS;
#endif

	if (metal_init(&init_param)) {
		xil_printf("ERROR: Failed to run metal initialization\n");
		return XRFDC_FAILURE;
	}

	/* Initialize the RFdc driver. */
	ConfigPtr = XRFdc_LookupConfig(RFDC_DEVICE_ID);
	if (ConfigPtr == NULL) {
		xil_printf("Failed to init RFdc driver\r\n");
		return XST_FAILURE;
	}else{
		xil_printf("\n\rDeviceID: %d \r\nSilicon Revision: %d\r\n", ConfigPtr->Name, ConfigPtr->SiRevision);

	}

	/* Initializes the controller */
	Status = XRFdc_CfgInitialize(&RFdcInst, ConfigPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Failed to init RFdc controller\r\n");
		return XST_FAILURE;
	}
	else {
			xil_printf("The RFDC controller is initialized.\r\n");
		}
	// Display the Power-on Status
	rfdcStartup();

    xil_printf("\n\r------------- Startup Complete ----------------\r\n\n");

    Status = XAxiDma_SimplePollExample(XPAR_XAXIDMA_0_BASEADDR);

return 0;
}


/*****************************************************************************/
/**
*
* My libmetal logger
* Intercepts log prints and adjusts \r\n prints to display the some on a uart
* or through a jtagUart.
*
******************************************************************************/

void my_metal_default_log_handler(enum metal_log_level level,
			       const char *format, ...)
{
	char msg[1024];
	char msgOut[1048];
	char *outPtr;
	int i;

	va_list args;
	static const char *level_strs[] = {
		"metal: emergency: ",
		"metal: alert:     ",
		"metal: critical:  ",
		"metal: error:     ",
		"metal: warning:   ",
		"metal: notice:    ",
		"metal: info:      ",
		"metal: debug:     ",
	};

	va_start(args, format);
	vsnprintf(msg, sizeof(msg), format, args);
	va_end(args);

	//replace single \n with \n\r
	outPtr = msgOut;
	for(i=0; i<1024; i++) {
		// if /n/r or /r/n combo
		if ((msg[i] == '\r' && msg[i+1] == '\n') ||
				(msg[i] == '\n' && msg[i+1] == '\r')) {
			*outPtr++ = msg[i++];
		} else if(msg[i] == '\n') {
			//if first char in string is \n, then remove
			if(i==0) {
				continue;
			} else {
				*outPtr++ = '\r';
			}
		}
		*outPtr++ = msg[i];
		if(msg[i] == 0) {
			break;
		}
	}
	//if line doesn't end with \n\r, then add it
	if( (msg[i-1] != '\n') && (msg[i-1] != '\r') ) {
		*(outPtr-1) = '\r';
		*outPtr++ = '\n';
		*outPtr++ = 0;
	}

	if (level <= METAL_LOG_EMERGENCY || level > METAL_LOG_DEBUG)
		level = METAL_LOG_EMERGENCY;

	xil_printf("%s%s", level_strs[level], msgOut);
}


/****************************************************************************/
/**
*
* This function resets all CLK_104 PLL I2C devices.
*
* @param	None
*
* @return
*	- XST_SUCCESS if successful.
*	- XST_FAILURE if failed.
*
* @note		None
*
****************************************************************************/
static int resetAllClk104(void)
{
	int ret = EXIT_FAILURE;
//	printf("Reset LMK\n\r");
	if (XST_FAILURE == XRFClk_ResetChip(RFCLK_LMK)) {
		printf("Failure in XRFClk_ResetChip(RFCLK_LMK)\n\r");
		return ret;
	}

//	printf("Reset LMX2594_1\n\r");
	if (XST_FAILURE == XRFClk_ResetChip(RFCLK_LMX2594_1)) {
		printf("Failure in XRFClk_ResetChip(RFCLK_LMX2594_1)\n\r");
		return ret;
	}

//	printf("Reset LMX2594_2\n\r");
	if (XST_FAILURE == XRFClk_ResetChip(RFCLK_LMX2594_2)) {
		printf("Failure in XRFClk_ResetChip(RFCLK_LMX2594_2)\n\r");
		return ret;
	}

#ifdef XPS_BOARD_ZCU111
//	printf("Reset LMX2594_3\n\r");
	if (XST_FAILURE == XRFClk_ResetChip(RFCLK_LMX2594_3)) {
		printf("Failure in XRFClk_ResetChip(RFCLK_LMX2594_3)\n\r");
		return ret;
	}
#endif

	return EXIT_SUCCESS;
}


/****************************************************************************/
/**
*
* Print LMK PLL device settings such as input and output clk frequencies.
* The instance structure is initialized by calling LMK_init()
*
* @param
*	- lmkInstPtr a pointer to the LMK instance structure
*
* @return
*	- void
*
* @note		None
*
****************************************************************************/
void printLMKsettings(lmk_config_t *lmkInstPtr)
{


#ifdef LMK_DEBUG
    LMK_intermediateDump(lmkInstPtr);
#endif

    // Print LMK CLKin frequencies
    if(lmkInstPtr->clkin_sel_mode == LMK_CLKin_SEL_MODE_AUTO_MODE ) {
    	xil_printf("CLKin Auto Mode Enabled\n\r");
    }
    for(int i=0; i<3; i++) {
    	if(lmkInstPtr->clkin[i].freq != -1) {
    		xil_printf("CLKin%d_freq: %12ldKHz\n\r", i, lmkInstPtr->clkin[i].freq/1000);
    	}
    }

    // Print LMK CLKout frequencies
	for(int i=0; i<7; i++) {
		xil_printf("DCLKout%02d(%-10s):", i*2, clkoutBrdNames[i*2]);
		if(lmkInstPtr->clkout[i].dclk_freq == -1) {
			xil_printf("%12s", "-----");
		} else {
			xil_printf("%9ldKHz", lmkInstPtr->clkout[i].dclk_freq/1000);
		}

		xil_printf(" SDCLKout%02d(%-15s):", i*2 + 1, clkoutBrdNames[i*2 +1]);
		if(lmkInstPtr->clkout[i].sclk_freq == -1) {
			xil_printf("%12s\n\r", "-----");
		} else {
			xil_printf("%9ldKHz\n\r", lmkInstPtr->clkout[i].sclk_freq/1000);
		}
	}
}


/****************************************************************************/
/**
*
* Print LMX PLL device output clk frequencies.
* The instance structure is initialized by calling LMX_SettingsInit()
*
* @param
* 	- clkin is the clk freq fed into the LMX PLL. This value is used to
* 	  calculate and display the output frequencies
*	- lmxInstPtr a pointer to the LMX instance structure
*
* @return
*	- void
*
* @note		None
*
****************************************************************************/
void printLMXsettings(long int clkin, lmx_config_t *lmxInstPtr)
{


#ifdef LMX_DEBUG
    LMX_intermediateDump(lmxInstPtr);
#endif

    // Print LMX CLKin freq
    xil_printf("CLKin_freq: %10ldKHz\n\r", clkin/1000);


    // Print LMX CLKout frequencies
	xil_printf("RFoutA Freq:");
	if(lmxInstPtr->RFoutA_freq == -1) {
		xil_printf("%13s\n\r", "-----");
	} else {
		xil_printf("%10ldKHz\n\r", lmxInstPtr->RFoutA_freq/1000);
	}

	xil_printf("RFoutB Freq:");
	if(lmxInstPtr->RFoutB_freq == -1) {
		xil_printf("%13s\n\r", "-----");
	} else {
		xil_printf("%10ldKHz\n\r", lmxInstPtr->RFoutB_freq/1000);
	}

}


/****************************************************************************/
/**
*
* Reads the configuration of LMK and LMX PLL then calculates and displays
* the PLL frequencies and settings.
* The instance structures ar initialized by calling LMK_init() or
* LMX_SettingsInit()
*
* @param
* 	- nil
*
* @return
*	- void
*
* @note		None
*
****************************************************************************/
void printCLK104_settings(void)
{
	char pllNames[3][9] = {"LMK ----", "LMX_RF1", "LMX_RF2"};
	u32  chipIds[3] = {RFCLK_LMK, RFCLK_LMX2594_1, RFCLK_LMX2594_2};

	for(int i=0; i<3; i++) {
		if (XST_FAILURE == XRFClk_GetConfigFromOneChip(chipIds[i], data)) {
			printf("Failure in XRFClk_GetConfigFromOneChip()\n\r");
			return;
		}

		// For LMX, reverse readback data to match exported register sets and
		// order of LMX2594[][]
		if(chipIds[i] != RFCLK_LMK) {
			reverse32bArray(data, LMX2594_COUNT-3);
		}

#if 0
		// Dump raw data read from device
		printf("Config data is:\n\r");
		for (int j = 0; j < ((chipIds[i]==RFCLK_LMK) ? LMK_COUNT : LMX2594_COUNT-3); j++) {
			printf("%08X, ", data[j]);
			if( !(j % 6) ) printf("\n\r");
		}
		printf("\n\r");
#endif

		// Display clock values of device
		printf("Clk settings read from %s ---------------------\n\r", pllNames[i]);
		if(chipIds[i] == RFCLK_LMK) {
			LMK_init(data, &lmkConfig);
			printLMKsettings(&lmkConfig);
		} else {
			// clkout index is i=1 idx = 0, i=2 idx=2. i&2 meets this alg
			LMX_SettingsInit(lmkConfig.clkout[ (i & 2) ].dclk_freq, data, &lmxConfig);
			printLMXsettings(lmkConfig.clkout[ (i & 2) ].dclk_freq, &lmxConfig);		}
		xil_printf("\n\r");
	}
}



void reverse32bArray(u32 *src, int size) {
	u32 tmp[200];
	int i, j;

	//copy src into temp
	for(i = 0, j=size - 1; i < size; i++, j--) {
		tmp[i] = src[j];
	}

	//copy swapped array to original
	for(i=0; i< size; i++) {
		src[i] = tmp[i];
	}
	return;
}

/*****************************************************************************/
/**
*
* Startup DAC's and ADC's
*
* @param	None
*
* @return	None
*
* @note		TBD
*
******************************************************************************/
//void rfdcStartup (u32 *cmdVals) {
void rfdcStartup () {

	int Tile_Id;
	XRFdc_IPStatus ipStatus;
	XRFdc* RFdcInstPtr = &RFdcInst;
	u32 val;
//	u32 test;

	// Calling this function gets the status of the IP
	XRFdc_GetIPStatus(RFdcInstPtr, &ipStatus);

//	xil_printf("\r\n###############################################\r\n");
	xil_printf("Data Converter startup up is in progress...\n\r");

	// Master Reset
	Xil_Out32(RFDC_BASE + 0x0004, 1);

//	xil_printf("RF Data Converters Powered up.\r\n");
	sleep(1);

	// startup
	for ( Tile_Id=0; Tile_Id<=3; Tile_Id++) {
		if (ipStatus.DACTileStatus[Tile_Id].IsEnabled == 1) {
			val = XRFdc_ReadReg16(RFdcInstPtr, XRFDC_ADC_TILE_CTRL_STATS_ADDR(Tile_Id), XRFDC_ADC_DEBUG_RST_OFFSET);
			if(val & XRFDC_DBG_RST_CAL_MASK) {
				xil_printf("  Tile: %d NOT ready.\r\n", Tile_Id);
			} else {
				XRFdc_StartUp(RFdcInstPtr, 1, Tile_Id);
				usleep(200000);
			}
		}
	}

	for ( Tile_Id=0; Tile_Id<=3; Tile_Id++) {
		if (ipStatus.ADCTileStatus[Tile_Id].IsEnabled == 1) {
			val = XRFdc_ReadReg16(RFdcInstPtr, XRFDC_ADC_TILE_CTRL_STATS_ADDR(Tile_Id), XRFDC_ADC_DEBUG_RST_OFFSET);
			if(val & XRFDC_DBG_RST_CAL_MASK) {
				xil_printf("  ADC Tile%d NOT ready.\r\n", Tile_Id);
			} else {
				XRFdc_StartUp(RFdcInstPtr, 0, Tile_Id);
				usleep(200000);
			}
		}
	}

	xil_printf("\r\nThe Power-on sequence step. 0xF is complete.\r\n");


	for ( Tile_Id=0; Tile_Id<=3; Tile_Id++) {
		if (ipStatus.DACTileStatus[Tile_Id].IsEnabled == 1) {
			val = XRFdc_ReadReg16(RFdcInstPtr, XRFDC_ADC_TILE_CTRL_STATS_ADDR(Tile_Id), XRFDC_ADC_DEBUG_RST_OFFSET);
			if(val & XRFDC_DBG_RST_CAL_MASK) {
				xil_printf("  Tile: %d NOT ready.\r\n", Tile_Id);
			} else {
				xil_printf("   DAC Tile%d Power-on Sequence Step: 0x%08x\r\n",Tile_Id,
						Xil_In32(RFDC_BASE + 0x0000C + 0x04000 + Tile_Id * 0x4000));
			}
		}
	}

	for ( Tile_Id=0; Tile_Id<=3; Tile_Id++) {
		if (ipStatus.ADCTileStatus[Tile_Id].IsEnabled == 1) {
			val = XRFdc_ReadReg16(RFdcInstPtr, XRFDC_ADC_TILE_CTRL_STATS_ADDR(Tile_Id), XRFDC_ADC_DEBUG_RST_OFFSET);
			if(val & XRFDC_DBG_RST_CAL_MASK) {
				xil_printf("  ADC Tile%d NOT ready.\r\n", Tile_Id);
			} else {
				xil_printf("   ADC Tile%d Power-on Sequence Step: 0x%08x\r\n",Tile_Id,
						Xil_In32(RFDC_BASE + 0x0000C + 0x14000 + Tile_Id * 0x4000));
			}
		}
	}


	xil_printf("\n\rData Converter start up is complete!");
//	xil_printf("\r\n###############################################\r\n");

	return;
}


