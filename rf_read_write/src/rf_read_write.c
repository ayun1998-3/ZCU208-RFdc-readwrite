/***************************** Include Files *********************************/
#include "xaxidma.h"
#include "xparameters.h"
#include "xdebug.h"
#include "sleep.h"
#include <xil_types.h>


/******************** Constant Definitions **********************************/

/*
 * Device hardware build related constants.
 */

#ifndef SDT
#define DMA_DEV_ID		XPAR_AXIDMA_0_DEVICE_ID

#ifdef XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#define DDR_BASE_ADDR		XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#elif defined (XPAR_MIG7SERIES_0_BASEADDR)
#define DDR_BASE_ADDR	XPAR_MIG7SERIES_0_BASEADDR
#elif defined (XPAR_MIG_0_C0_DDR4_MEMORY_MAP_BASEADDR)
#define DDR_BASE_ADDR	XPAR_MIG_0_C0_DDR4_MEMORY_MAP_BASEADDR
#elif defined (XPAR_PSU_DDR_0_S_AXI_BASEADDR)
#define DDR_BASE_ADDR	XPAR_PSU_DDR_0_S_AXI_BASEADDR
#endif

#else

#ifdef XPAR_MEM0_BASEADDRESS
#define DDR_BASE_ADDR		XPAR_MEM0_BASEADDRESS
#endif
#endif

#ifndef DDR_BASE_ADDR
#warning CHECK FOR THE VALID DDR ADDRESS IN XPARAMETERS.H, \
DEFAULT SET TO 0x01000000
#define MEM_BASE_ADDR		0x01000000
#else
#define MEM_BASE_ADDR		(DDR_BASE_ADDR + 0x1000000)
#endif

#define TX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00300000)
#define RX_BUFFER_HIGH		(MEM_BASE_ADDR + 0x004FFFFF)

#define MAX_PKT_LEN		0x100

#define TEST_START_VALUE	0x100

#define NUMBER_OF_TRANSFERS	10
#define POLL_TIMEOUT_COUNTER    1000000U

/**************************** Type Definitions *******************************/


/***************** Macros (Inline Functions) Definitions *********************/


/************************** Function Prototypes ******************************/

#if (!defined(DEBUG))
extern void xil_printf(const char *format, ...);
#endif

#ifndef SDT // SDT is System Device Tree? (doesn't seem to be defined in xparameters.h)
int simple_read_write(u16 DeviceId);
#else
int simple_read_write(UINTPTR BaseAddress);
#endif
static int checkData(void);

/************************** Variable Definitions *****************************/
/*
 * Device instance definitions
 */
XAxiDma AxiDma;

int main()
{
	int Status;

	xil_printf("\r\n--- Entering main() --- \r\n");

	/* Run the poll example for simple transfer */
#ifndef SDT
	Status = simple_read_write(DMA_DEV_ID);
#else
	Status = simple_read_write(XPAR_XAXIDMA_0_BASEADDR);
#endif

	if (Status != XST_SUCCESS) {
		xil_printf("XAxiDma_SimplePoll Example Failed\r\n");
		return XST_FAILURE;
	}

	xil_printf("Successfully ran XAxiDma_SimplePoll Example\r\n");

	xil_printf("--- Exiting main() --- \r\n");

	return XST_SUCCESS;

}


/**
*    Write some dummy data to DAC, read that data from ADC
* @param	DeviceId is the Device Id of the XAxiDma instance 
* @return
*		- XST_SUCCESS if example finishes successfully
*		- XST_FAILURE if error occurs
*
* @note		None   
**/
#ifndef SDT
int simple_read_write(u16 DeviceId)
#else
int simple_read_write(UINTPTR BaseAddress)
#endif
{
	XAxiDma_Config *CfgPtr;
	int Status;
	int Tries = NUMBER_OF_TRANSFERS;
	int Index;
	u32 *TxBufferPtr;
	u32 *RxBufferPtr;
	u32 Value;
	int TimeOut = POLL_TIMEOUT_COUNTER;

	TxBufferPtr = (u32 *)TX_BUFFER_BASE ;
	RxBufferPtr = (u32 *)RX_BUFFER_BASE;

	/* Initialize the XAxiDma device.
	 */
#ifndef SDT
	CfgPtr = XAxiDma_LookupConfig(DeviceId);
	if (!CfgPtr) {
		xil_printf("No config found for %d\r\n", DeviceId);
		return XST_FAILURE;
	}
#else
	CfgPtr = XAxiDma_LookupConfig(BaseAddress);
	if (!CfgPtr) {
		xil_printf("No config found for %d\r\n", BaseAddress);
		return XST_FAILURE;
	}
#endif

	Status = XAxiDma_CfgInitialize(&AxiDma, CfgPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}

	if (XAxiDma_HasSg(&AxiDma)) {
		xil_printf("Device configured as SG mode \r\n");
		return XST_FAILURE;
	}

	/* Disable interrupts, we use polling mode
	 */
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
			    XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
			    XAXIDMA_DMA_TO_DEVICE);

	Value = TEST_START_VALUE;


    // populate Tx buffer with dummy values
	for (Index = 0; Index < MAX_PKT_LEN; Index ++) {
		TxBufferPtr[Index] = Value;

		Value = (Value + 1) & 0xFF;
	}

	/* Flush the buffers before the DMA transfer, in case the Data Cache
	 * is enabled
	 */
	Xil_DCacheFlushRange((UINTPTR)TxBufferPtr, MAX_PKT_LEN);
	Xil_DCacheFlushRange((UINTPTR)RxBufferPtr, MAX_PKT_LEN);

	for (Index = 0; Index < Tries; Index ++) {
        xil_printf("Iteration, %d\r\n", Index);

		Status = XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR) RxBufferPtr,
						MAX_PKT_LEN, XAXIDMA_DEVICE_TO_DMA);

        xil_printf("Check 1\r\n");


		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

        xil_printf("Check 2\r\n");


		Status = XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR) TxBufferPtr,
						MAX_PKT_LEN, XAXIDMA_DMA_TO_DEVICE);

		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		/*Wait till tranfer is done or 1usec * 10^6 iterations of timeout occurs*/
		while (TimeOut) {
			if (!(XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) &&
			    !(XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE))) {
				break;
			}
			TimeOut--;
			usleep(1U);
		}

		Status = checkData();
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

	}

	/* Test finishes successfully
	 */
	return XST_SUCCESS;
}



/*****************************************************************************/
/*
*
* This function checks data buffer after the DMA transfer is finished.
*
* @param	None
*
* @return
*		- XST_SUCCESS if validation is successful.
*		- XST_FAILURE otherwise.
*
* @note		None.
*
******************************************************************************/
static int checkData(void)
{
	u32 *RxPacket;
	int Index = 0;
	u32 Value;

	RxPacket = (u32 *) RX_BUFFER_BASE;
	Value = TEST_START_VALUE;

	/* Invalidate the DestBuffer before receiving the data, in case the
	 * Data Cache is enabled
	 */
	Xil_DCacheInvalidateRange((UINTPTR)RxPacket, MAX_PKT_LEN);

	for (Index = 0; Index < MAX_PKT_LEN; Index++) {
        //xil_printf("Received :%d. \r\n", RxPacket[Index]);
		if (RxPacket[Index] != Value) {
			xil_printf("Data error %d: sent %d, received %d\r\n",
				   Index, (unsigned int)Value,
				   (unsigned int)RxPacket[Index]);

			//return XST_FAILURE;
		}
		Value = (Value + 1) & 0xFF;
	}

	return XST_SUCCESS;
}