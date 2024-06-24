/*
 * Copyright (c) 2015, Xilinx Inc. and Contributors. All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

/*
 * @file	cpu.h
 * @brief	CPU specific primitives
 */

#ifndef __METAL_AARCH64_CPU__H__
#define __METAL_AARCH64_CPU__H__

#include <metal/compiler.h>

static inline void metal_cpu_yield(void)
{
	metal_asm volatile("yield");
}

#endif /* __METAL_AARCH64_CPU__H__ */