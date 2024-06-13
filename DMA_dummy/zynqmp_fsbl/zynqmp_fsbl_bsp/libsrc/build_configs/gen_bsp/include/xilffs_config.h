/******************************************************************************
* Copyright (c) 2023 - 2024 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
#ifndef XILFFS_CONFIG_H
#define XILFFS_CONFIG_H

#include "xparameters.h"

#if (defined XPAR_XSDPS_0_BASEADDR)
#define FILE_SYSTEM_INTERFACE_SD  
#endif

/* #undef FILE_SYSTEM_INTERFACE_RAM */
/* #undef RAMFS_SIZE */
/* #undef RAMFS_START_ADDR */

#define FILE_SYSTEM_READ_ONLY  
/* #undef FILE_SYSTEM_FS_EXFAT */
/* #undef FILE_SYSTEM_USE_LFN */
/* #undef FILE_SYSTEM_USE_MKFS */
/* #undef FILE_SYSTEM_USE_TRIM */
/* #undef FILE_SYSTEM_MULTI_PARTITION */
/* #undef FILE_SYSTEM_USE_CHMOD */
#define FILE_SYSTEM_NUM_LOGIC_VOL 2
#define FILE_SYSTEM_WORD_ACCESS  
/* #undef FILE_SYSTEM_USE_STRFUNC */
/* #undef FILE_SYSTEM_SET_FS_RPATH */

#endif /* XILFFS_CONFIG_H */