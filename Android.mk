LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),PA32)
include $(call all-makefiles-under,$(LOCAL_PATH))

endif
