# device rootdir
#PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(DEVICE_PATH)/rootdir,recovery/root) 
#TWRP
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/etc/recovery.fstab:recovery/root/etc/recovery.fstab
 
