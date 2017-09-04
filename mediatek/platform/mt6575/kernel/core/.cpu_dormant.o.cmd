cmd_../mediatek/platform/mt6575/kernel/core/cpu_dormant.o := arm-linux-androideabi-gcc -Wp,-MD,../mediatek/platform/mt6575/kernel/core/.cpu_dormant.o.d  -nostdinc -isystem /alps/mprelease/MPload/ALPS.ICS.MP.V1_LENOVO75_A2_ICS/custom_release/inhouse/alps/prebuilt/linux-x86/toolchain/arm-linux-androideabi-4.4.x/bin/../lib/gcc/arm-linux-androideabi/4.4.3/include -I/proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include -Iarch/arm/include/generated -Iinclude  -include include/generated/autoconf.h -I../mediatek/custom///common -I../mediatek/platform/mt6575/kernel/core/include/ -I../mediatek/source/kernel/include/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/touchpanel/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/battery/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/gyroscope/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/alsps/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/camera/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/accelerometer/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/dct/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/kpd/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/vibrator/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/imgsensor/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/core/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/leds/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/headset/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/rtc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/usb/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/gyroscope/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/alsps/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/eeprom/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/eeprom/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/magnetometer/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/accelerometer/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/lens/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/lens/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/./ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/ccci/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/flashlight/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/flashlight/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/imgsensor/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/barometer/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/sound/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/sound/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/fm/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/jogball/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/hdmi/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/leds/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/lcm/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/lcm/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/camera/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/sensors/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/imgsensor/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/audioflinger/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/vt/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/ant/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/eeprom/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/lens/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/flashlight/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/bluetooth/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/matv/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/combo/ -D__KERNEL__   -mlittle-endian -DMODEM_3G -I../mediatek/platform/mt6575/kernel/core/include -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork -D__LINUX_ARM_ARCH__=7 -march=armv7-a -include asm/unified.h -Wa,-mfpu=neon -gdwarf-2        -c -o ../mediatek/platform/mt6575/kernel/core/cpu_dormant.o ../mediatek/platform/mt6575/kernel/core/cpu_dormant.S

source_../mediatek/platform/mt6575/kernel/core/cpu_dormant.o := ../mediatek/platform/mt6575/kernel/core/cpu_dormant.S

deps_../mediatek/platform/mt6575/kernel/core/cpu_dormant.o := \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/memory.h \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/arm/patch/phys/virt/16bit.h) \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  include/linux/const.h \
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
  ../mediatek/platform/mt6575/kernel/core/include/mach/memory.h \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/sizes.h \
  include/asm-generic/sizes.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  ../mediatek/platform/mt6575/kernel/core/include/mach/mt6575_reg_base.h \
    $(wildcard include/config/base.h) \

../mediatek/platform/mt6575/kernel/core/cpu_dormant.o: $(deps_../mediatek/platform/mt6575/kernel/core/cpu_dormant.o)

$(deps_../mediatek/platform/mt6575/kernel/core/cpu_dormant.o):
