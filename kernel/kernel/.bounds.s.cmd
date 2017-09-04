cmd_kernel/bounds.s := arm-linux-androideabi-gcc -Wp,-MD,kernel/.bounds.s.d  -nostdinc -isystem /alps/mprelease/MPload/ALPS.ICS.MP.V1_LENOVO75_A2_ICS/custom_release/inhouse/alps/prebuilt/linux-x86/toolchain/arm-linux-androideabi-4.4.x/bin/../lib/gcc/arm-linux-androideabi/4.4.3/include -I/proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include -Iarch/arm/include/generated -Iinclude  -include include/generated/autoconf.h -I../mediatek/custom///common -I../mediatek/platform/mt6575/kernel/core/include/ -I../mediatek/source/kernel/include/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/touchpanel/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/battery/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/gyroscope/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/alsps/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/camera/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/accelerometer/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/dct/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/kpd/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/vibrator/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/imgsensor/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/core/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/leds/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/headset/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/rtc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/usb/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/gyroscope/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/alsps/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/eeprom/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/eeprom/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/magnetometer/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/accelerometer/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/lens/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/lens/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/./ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/ccci/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/flashlight/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/flashlight/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/imgsensor/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/barometer/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/sound/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/sound/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/fm/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/jogball/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/hdmi/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/leds/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/lcm/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/lcm/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/camera/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/sensors/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/imgsensor/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/audioflinger/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/vt/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/ant/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/eeprom/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/lens/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/flashlight/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/bluetooth/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/matv/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/combo/ -D__KERNEL__ -mlittle-endian -DMODEM_3G -I../mediatek/platform/mt6575/kernel/core/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -fno-pic -marm -fno-dwarf2-cfi-asm -fno-omit-frame-pointer -mapcs -mno-sched-prolog -mabi=aapcs-linux -mno-thumb-interwork -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -DMTK_WAPI_SUPPORT -DMTK_SENSOR_SUPPORT -DCUSTOM_KERNEL_ALSPS -DCUSTOM_KERNEL_ACCELEROMETER -DMTK_BT_SUPPORT -DMTK_FM_SUPPORT -DMTK_CAMERA_APP_3DHW_SUPPORT -DMTK_FM_TX_SUPPORT -DMTK_VT3G324M_SUPPORT -DMTK_M4U_SUPPORT -DMTK_WLAN_SUPPORT -DMTK_BT_21_SUPPORT -DMTK_BT_30_SUPPORT -DMTK_BT_40_SUPPORT -DMTK_BT_FM_OVER_BT_VIA_CONTROLLER -DMTK_BT_PROFILE_OPP -DMTK_BT_PROFILE_SIMAP -DMTK_BT_PROFILE_PRXM -DMTK_BT_PROFILE_PRXR -DMTK_BT_PROFILE_HIDH -DMTK_BT_PROFILE_FTP -DMTK_BT_PROFILE_PBAP -DMTK_BT_PROFILE_MANAGER -DMTK_BT_PROFILE_BPP -DMTK_BT_PROFILE_BIP -DMTK_BT_PROFILE_DUN -DMTK_BT_PROFILE_PAN -DMTK_BT_PROFILE_HFP -DMTK_BT_PROFILE_A2DP -DMTK_BT_PROFILE_AVRCP -DMTK_BT_PROFILE_AVRCP14 -DMTK_BT_PROFILE_MAPS -DMTK_BT_PROFILE_MAPC -DMTK_BT_PROFILE_SPP -DMTK_FM_SHORT_ANTENNA_SUPPORT -DMTK_WIFI_HOTSPOT_SUPPORT -DMTK_FM_SUPPORT -DMTK_GPS_SUPPORT -DHAVE_XLOG_FEATURE -DMTK_MAV_SUPPORT -DMTK_HDR_SUPPORT -DMTK_CAMERA_BSP_SUPPORT -DCUSTOM_KERNEL_GYROSCOPE -DMTK_AUTORAMA_SUPPORT -DMTK_IPV6_SUPPORT -DMTK_MULTI_STORAGE_SUPPORT -DMTK_FM_RECORDING_SUPPORT -DMTK_USES_HD_VIDEO -DMTK_THEMEMANAGER_APP -DMTK_EMMC_SUPPORT -DMTK_NCP1851_SUPPORT -DMTK_FACEBEAUTY_SUPPORT -DMTK_FM_RX_SUPPORT -DMTK_TB_DEBUG_SUPPORT -DMTK_COMBO_SUPPORT -DMTK_CAMCORDER_PROFILE_MID_MP4 -DMTK_DISPLAY_HIGH_RESOLUTION -DMTK_FD_SUPPORT -DMT6575 -DMT6620_FM -DMTK_MT6620 -DOV2659_YUV -DHI704_YUV -DDUMMY_LENS -DDUMMY_LENS -DMTK_GPS_MT6620 -DMT6620 -DMODEM_3G -DTM070DDH03 -DDUMMY_FLASHLIGHT -DFM_ANALOG_OUTPUT -DFM_ANALOG_INPUT -DMT6620E3 -DLCM_WIDTH=\"1024\" -DLCM_HEIGHT=\"600\" -DMTK_LCM_PHYSICAL_ROTATION=\"90\" -DMTK_SHARE_MODEM_SUPPORT=\"2\" -DMTK_SHARE_MODEM_CURRENT=\"2\" -DEMMC_CHIP=\"9\" -Wframe-larger-than=1024 -fno-stack-protector -fno-omit-frame-pointer -fno-optimize-sibling-calls -g -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(bounds)"  -D"KBUILD_MODNAME=KBUILD_STR(bounds)" -fverbose-asm -S -o kernel/bounds.s kernel/bounds.c

source_kernel/bounds.s := kernel/bounds.c

deps_kernel/bounds.s := \
  include/linux/page-flags.h \
    $(wildcard include/config/pageflags/extended.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/swap.h) \
    $(wildcard include/config/s390.h) \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/types.h \
  include/asm-generic/int-ll64.h \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc4.h \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/posix_types.h \
  include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/arch/populates/node/map.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/cgroup/mem/res/ctlr.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  include/linux/kbuild.h \
  include/linux/page_cgroup.h \
    $(wildcard include/config/cgroup/mem/res/ctlr/swap.h) \

kernel/bounds.s: $(deps_kernel/bounds.s)

$(deps_kernel/bounds.s):
