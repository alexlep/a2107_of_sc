/* Copyright Statement:
 *
 * This software/firmware and related documentation ("MediaTek Software") are
 * protected under relevant copyright laws. The information contained herein
 * is confidential and proprietary to MediaTek Inc. and/or its licensors.
 * Without the prior written permission of MediaTek inc. and/or its licensors,
 * any reproduction, modification, use or disclosure of MediaTek Software,
 * and information contained herein, in whole or in part, shall be strictly prohibited.
 *
 * MediaTek Inc. (C) 2010. All rights reserved.
 *
 * BY OPENING THIS FILE, RECEIVER HEREBY UNEQUIVOCALLY ACKNOWLEDGES AND AGREES
 * THAT THE SOFTWARE/FIRMWARE AND ITS DOCUMENTATIONS ("MEDIATEK SOFTWARE")
 * RECEIVED FROM MEDIATEK AND/OR ITS REPRESENTATIVES ARE PROVIDED TO RECEIVER ON
 * AN "AS-IS" BASIS ONLY. MEDIATEK EXPRESSLY DISCLAIMS ANY AND ALL WARRANTIES,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR NONINFRINGEMENT.
 * NEITHER DOES MEDIATEK PROVIDE ANY WARRANTY WHATSOEVER WITH RESPECT TO THE
 * SOFTWARE OF ANY THIRD PARTY WHICH MAY BE USED BY, INCORPORATED IN, OR
 * SUPPLIED WITH THE MEDIATEK SOFTWARE, AND RECEIVER AGREES TO LOOK ONLY TO SUCH
 * THIRD PARTY FOR ANY WARRANTY CLAIM RELATING THERETO. RECEIVER EXPRESSLY ACKNOWLEDGES
 * THAT IT IS RECEIVER'S SOLE RESPONSIBILITY TO OBTAIN FROM ANY THIRD PARTY ALL PROPER LICENSES
 * CONTAINED IN MEDIATEK SOFTWARE. MEDIATEK SHALL ALSO NOT BE RESPONSIBLE FOR ANY MEDIATEK
 * SOFTWARE RELEASES MADE TO RECEIVER'S SPECIFICATION OR TO CONFORM TO A PARTICULAR
 * STANDARD OR OPEN FORUM. RECEIVER'S SOLE AND EXCLUSIVE REMEDY AND MEDIATEK'S ENTIRE AND
 * CUMULATIVE LIABILITY WITH RESPECT TO THE MEDIATEK SOFTWARE RELEASED HEREUNDER WILL BE,
 * AT MEDIATEK'S OPTION, TO REVISE OR REPLACE THE MEDIATEK SOFTWARE AT ISSUE,
 * OR REFUND ANY SOFTWARE LICENSE FEES OR SERVICE CHARGE PAID BY RECEIVER TO
 * MEDIATEK FOR SUCH MEDIATEK SOFTWARE AT ISSUE.
 */

/*
 * rs_bitmap.c --- routine for changing the size of a bitmap
 *
 * Copyright (C) 1996, 1997 Theodore Ts'o.
 *
 * %Begin-Header%
 * This file may be redistributed under the terms of the GNU Public
 * License.
 * %End-Header%
 */

#include <stdio.h>
#include <string.h>
#if HAVE_UNISTD_H
#include <unistd.h>
#endif
#include <fcntl.h>
#include <time.h>
#ifdef HAVE_SYS_STAT_H
#include <sys/stat.h>
#endif
#ifdef HAVE_SYS_TYPES_H
#include <sys/types.h>
#endif

#include "ext2_fs.h"
#include "ext2fs.h"

errcode_t ext2fs_resize_generic_bitmap(__u32 new_end, __u32 new_real_end,
				       ext2fs_generic_bitmap bmap)
{
	errcode_t	retval;
	size_t		size, new_size;
	__u32		bitno;

	if (!bmap)
		return EXT2_ET_INVALID_ARGUMENT;

	EXT2_CHECK_MAGIC(bmap, EXT2_ET_MAGIC_GENERIC_BITMAP);

	/*
	 * If we're expanding the bitmap, make sure all of the new
	 * parts of the bitmap are zero.
	 */
	if (new_end > bmap->end) {
		bitno = bmap->real_end;
		if (bitno > new_end)
			bitno = new_end;
		for (; bitno > bmap->end; bitno--)
			ext2fs_clear_bit(bitno - bmap->start, bmap->bitmap);
	}
	if (new_real_end == bmap->real_end) {
		bmap->end = new_end;
		return 0;
	}
	
	size = ((bmap->real_end - bmap->start) / 8) + 1;
	new_size = ((new_real_end - bmap->start) / 8) + 1;

	if (size != new_size) {
		retval = ext2fs_resize_mem(size, new_size, &bmap->bitmap);
		if (retval)
			return retval;
	}
	if (new_size > size)
		memset(bmap->bitmap + size, 0, new_size - size);

	bmap->end = new_end;
	bmap->real_end = new_real_end;
	return 0;
}

errcode_t ext2fs_resize_inode_bitmap(__u32 new_end, __u32 new_real_end,
				     ext2fs_inode_bitmap bmap)
{
	errcode_t	retval;
	
	if (!bmap)
		return EXT2_ET_INVALID_ARGUMENT;

	EXT2_CHECK_MAGIC(bmap, EXT2_ET_MAGIC_INODE_BITMAP);

	bmap->magic = EXT2_ET_MAGIC_GENERIC_BITMAP;
	retval = ext2fs_resize_generic_bitmap(new_end, new_real_end,
					      bmap);
	bmap->magic = EXT2_ET_MAGIC_INODE_BITMAP;
	return retval;
}

errcode_t ext2fs_resize_block_bitmap(__u32 new_end, __u32 new_real_end,
				     ext2fs_block_bitmap bmap)
{
	errcode_t	retval;
	
	if (!bmap)
		return EXT2_ET_INVALID_ARGUMENT;

	EXT2_CHECK_MAGIC(bmap, EXT2_ET_MAGIC_BLOCK_BITMAP);

	bmap->magic = EXT2_ET_MAGIC_GENERIC_BITMAP;
	retval = ext2fs_resize_generic_bitmap(new_end, new_real_end,
					      bmap);
	bmap->magic = EXT2_ET_MAGIC_BLOCK_BITMAP;
	return retval;
}

