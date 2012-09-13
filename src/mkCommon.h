/*
 *  mkCommon.h
 *  MonkSWF
 *
 *  Created by Micah Pearlman on 3/18/09.
 *  Copyright 2009 MP Engineering. All rights reserved.
 *
 */

#ifndef __mkCommon_h__
#define __mkCommon_h__

#include <cassert>
#include <cstddef>
#include <stdint.h>
#include <cmath>

#if HAS_MONK_VG
#include <MonkVG/openvg.h>
#include <MonkVG/vgu.h>
#else
#include <vg/openvg.h>
#include <vg/vgu.h>
#endif

#define MK_ASSERT assert

#endif // __mkCommon_h__
