## Specify phone tech before including full_phone

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common CM stuff.
#$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, build/target/product/embedded.mk)

include $(call all-subdir-makefiles)

# Charger
PRODUCT_PACKAGES += charger charger_res_images

# Encryption
PRODUCT_PACKAGES += libcryptfs_hw

# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

# Release name
PRODUCT_RELEASE_NAME := SG506SH

TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := PA32
PRODUCT_NAME := omni_PA32
PRODUCT_BRAND := SHARP
PRODUCT_MODEL := SG506SH
PRODUCT_MANUFACTURER := SHARP

# These additionals go to /default.prop
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.allow.mock.location=1 \
ro.debuggable=1 \
ro.adb.secure=0 \
service.adb.root=1 \
ro.sf.lcd_density=320 \
persist.sys.timezone=Asia/Shanghai \
ro.hardware.keystore=msm8996
#
