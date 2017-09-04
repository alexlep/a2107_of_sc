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

/* Copyright (C) 2007-2008 The Android Open Source Project
** 
** This software is licensed under the terms of the GNU General Public
** License version 2, as published by the Free Software Foundation, and
** may be copied, distributed, and modified under those terms.
**
** This program is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
** GNU General Public License for more details.
*/
#ifndef _REMOTE_CALL_H
#define _REMOTE_CALL_H

#include "sms.h"

/* convert a base console port into a remote phone number, -1 on error */
extern int         remote_number_from_port( int  port );

/* convert a remote phone number into a remote console port, -1 on error */
extern int         remote_number_to_port( int  number );

extern int         remote_number_string_to_port( const char*  number );

typedef void   (*RemoteResultFunc)( void*  opaque, int  success );

typedef enum {
    REMOTE_CALL_DIAL = 0,
    REMOTE_CALL_BUSY,
    REMOTE_CALL_HANGUP,
/*
    REMOTE_CALL_HOLD,
    REMOTE_CALL_ACCEPT,
*/
//MTK-START [mtk80950] [ALPSXXXXXXXX] [111115] porting MTK-code to ICS
    REMOTE_CALL_HELD,
    REMOTE_CALL_ACCEPTED,
//MTK-END [mtk80950] [ALPSXXXXXXXX] [111115] porting MTK-code to ICS
    REMOTE_CALL_SMS
} RemoteCallType;

/* call this function when you need to dial a remote voice call.
 * this will try to connect to a remote emulator. the result function
 * is called to indicate success or failure after some time.
 *
 * returns 0 if the number is to a remote phone, or -1 otherwise
 */
extern  int     remote_call_dial( const char*       to_number,
                                  int               from_port,
                                  RemoteResultFunc  result_func,
                                  void*             result_opaque );

/* call this function to send a SMS to a remote emulator */
extern int      remote_call_sms( const char*   number, int  from_port, SmsPDU  pdu );

/* call this function to indicate that you're busy to a remote caller */
extern void     remote_call_other( const char*  to_number, int  from_port, RemoteCallType  type );

extern void     remote_call_cancel( const char*  to_number, int from_port );

//MTK-START [mtk80950] [ALPSXXXXXXXX] [111115] porting MTK-code to ICS
extern  int     remote_call_dial_gemini( const char*       to_number,
                                  int               from_port,
                                  RemoteResultFunc  result_func,
                                  void*             result_opaque,
                                  int sims);
extern int      remote_call_sms_gemini( const char*   number, int  from_port, SmsPDU  pdu,int from_sim );
extern void     remote_call_other_gemini( const char*  to_number, int  from_port, RemoteCallType  type,int sims );
extern void     remote_call_cancel_gemini( const char*  to_number, int  from_port ,int from_sim, RemoteCallType  type);
//MTK-END [mtk80950] [ALPSXXXXXXXX] [111115] porting MTK-code to ICS

#endif /* _REMOTE_CALL_H */
