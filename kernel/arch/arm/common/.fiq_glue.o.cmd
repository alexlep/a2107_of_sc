cmd_arch/arm/common/fiq_glue.o := arm-linux-androideabi-gcc -Wp,-MD,arch/arm/common/.fiq_glue.o.d  -nostdinc -isystem /alps/mprelease/MPload/ALPS.ICS.MP.V1_LENOVO75_A2_ICS/custom_release/inhouse/alps/prebuilt/linux-x86/toolchain/arm-linux-androideabi-4.4.x/bin/../lib/gcc/arm-linux-androideabi/4.4.3/include -I/proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include -Iarch/arm/include/generated -Iinclude  -include include/generated/autoconf.h -I../mediatek/custom///common -I../mediatek/platform/mt6575/kernel/core/include/ -I../mediatek/source/kernel/include/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/touchpanel/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/battery/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/gyroscope/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/alsps/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/camera/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/accelerometer/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/dct/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/kpd/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/vibrator/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/imgsensor/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/core/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/leds/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/headset/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/rtc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/usb/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/gyroscope/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/alsps/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/eeprom/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/eeprom/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/magnetometer/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/accelerometer/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/lens/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/lens/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/./ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/ccci/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/flashlight/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/flashlight/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/imgsensor/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/barometer/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/sound/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/sound/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/fm/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/jogball/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/hdmi/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/leds/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/lcm/ -I../mediatek/custom/out/lenovo75_a2_ics/kernel/lcm/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/camera/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/sensors/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/imgsensor/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/audioflinger/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/vt/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/ant/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/eeprom/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/lens/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/flashlight/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/bluetooth/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/inc/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/matv/ -I../mediatek/custom/out/lenovo75_a2_ics/hal/combo/ -D__KERNEL__   -mlittle-endian -DMODEM_3G -I../mediatek/platform/mt6575/kernel/core/include -D__ASSEMBLY__   -mabi=aapcs-linux -mno-thumb-interwork  -D__LINUX_ARM_ARCH__=7 -march=armv7-a  -include asm/unified.h -msoft-float -gdwarf-2        -c -o arch/arm/common/fiq_glue.o arch/arm/common/fiq_glue.S

source_arch/arm/common/fiq_glue.o := arch/arm/common/fiq_glue.S

deps_arch/arm/common/fiq_glue.o := \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  include/linux/linkage.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/linkage.h \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/assembler.h \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/smp.h) \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
    $(wildcard include/config/arm/thumb.h) \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/hwcap.h \
  /proj/mtk81316/GPL_PACKAGES/LENOVO-TABLET/custom_release/inhouse/alps/kernel/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
    $(wildcard include/config/cpu/use/domains.h) \

arch/arm/common/fiq_glue.o: $(deps_arch/arm/common/fiq_glue.o)

$(deps_arch/arm/common/fiq_glue.o):
