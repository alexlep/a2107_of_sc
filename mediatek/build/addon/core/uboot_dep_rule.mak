ifeq (emulator,$(strip $(MTK_PROJECT)))
  ifeq (yes,$(strip $(BUILD_UBOOT)))
    $(call dep-err-common, PLEASE set BUILD_UBOOT as "no" when building emulator)
  endif
endif

ifeq (MT6575, $(strip $(MTK_PLATFORM)))
  ifneq (arm_cortexa9, $(strip $(MTK_CPU)))
   $(call dep-err-seta-or-setb, MTK_PLATFORM, MT6573, MTK_CPU, arm_cortexa9)
  endif
endif