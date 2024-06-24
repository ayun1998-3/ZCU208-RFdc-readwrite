/******************************************************************************
* Copyright (c) 2018 - 2022 Xilinx, Inc.  All rights reserved.
* Copyright (c) 2022 - 2023 Advanced Micro Devices, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/


#ifndef XPM_DEVICE_PLAT_H_
#define XPM_DEVICE_PLAT_H_

#include "xpm_node.h"
#include "xpm_power.h"
#include "xpm_clock.h"
#include "xpm_reset.h"

#ifdef __cplusplus
extern "C" {
#endif

/** PSM RAM Base address */
#define XPM_PSM_RAM_BASE_ADDR		(0xEBC00000U)
#define XPM_PSM_RAM_SIZE		(0x28000U)

#define IS_DEV_AIE(ID)			(0U != 0U)

/* TODO: FIXME: this should be long to xpm_node.h which is autogenerated. */
#define XPM_NODESUBCL_DEV_MEM_CTRLR	5

#define DDRMC_DEVID(IDX)	NODEID((u32)XPM_NODECLASS_DEVICE, \
				       (u32)XPM_NODESUBCL_DEV_MEM_CTRLR, \
				       (u32)XPM_NODETYPE_DEV_DDR, (IDX))

typedef struct XPm_DeviceNode XPm_Device;

/************************** Function Prototypes ******************************/
maybe_unused static u8 XPmDevice_IsRequestable(u32 NodeId)
{
	u8 Requestable = 0U;

	switch (NODESUBCLASS(NodeId)) {
	case (u32)XPM_NODESUBCL_DEV_CORE:
	case (u32)XPM_NODESUBCL_DEV_PERIPH:
	case (u32)XPM_NODESUBCL_DEV_MEM:
	case (u32)XPM_NODESUBCL_DEV_PL:
	case (u32)XPM_NODESUBCL_DEV_AIE:
	case (u32)XPM_NODESUBCL_DEV_MEM_CTRLR:
		Requestable = 1U;
		break;
	default:
		Requestable = 0U;
		break;
	}

	return Requestable;
}

/************************** Function Prototypes ******************************/
maybe_unused static inline void XPmDevice_ConfigureADMA(const u32 Id)
{
	(void)Id;
}
XStatus XPmDevice_SdResetWorkaround(const XPm_Device *Device);
maybe_unused static inline XStatus XPmAieDevice_UpdateClockDiv(const XPm_Device *Device, const XPm_Subsystem *Subsystem,
		const u32 Divider)
{
	(void)Device;
	(void)Subsystem;
	(void)Divider;
	return XST_SUCCESS;
}
maybe_unused static inline XStatus XPmDevice_PlatSetNode(const u32 Id, XPm_Device *Device, u16 *DbgErr)
{
	(void)Id;
	(void)Device;
	(void)DbgErr;
	return XST_DEVICE_NOT_FOUND;
}
maybe_unused static inline XPm_Device **XPmDevice_PlatGetById(const u32 DeviceId)
{
	(void)DeviceId;
	return NULL;
}
maybe_unused static inline XStatus XPmDevice_PlatAddParent(const u32 Id, const u32 ParentId)
{
	(void)Id;
	(void)ParentId;
	return XST_SUCCESS;
}
maybe_unused static inline struct XPm_Reqm *XPmDevice_GetAieReqm(XPm_Device *Device,
						    XPm_Subsystem *Subsystem)
{
	(void)Device;
	(void)Subsystem;

	return NULL;
}
maybe_unused static inline void PlatDevRequest(XPm_Device *Device,
				   const XPm_Subsystem *Subsystem, const u32 QoS,
				   XStatus *Status)
{
	(void)Device;
	(void)Subsystem;
	(void)QoS;
	(void)Status;
}

#ifdef __cplusplus
}
#endif

/** @} */
#endif /* XPM_DEVICE_PLAT_H_ */