/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
#ifndef _XFPGA_CONFIG_H
#define _XFPGA_CONFIG_H

#include <xilfpga.h>
#include <xilfpga_pcap.h>
#include <xilfpga_pcap_common.h>


#define XFPGA_OCM_ADDRESS	0xfffc0000U
#define XFPGA_BASE_ADDRESS	0x80000U
#define XFPGA_SECURE_MODE	 
#define XFPGA_DEBUG	 0
/* #undef XFPGA_SECURE_READBACK_MODE */
/* #undef XFPGA_SECURE_IPI_MODE_EN */

#endif /* XFPGA_CONFIG_H */
