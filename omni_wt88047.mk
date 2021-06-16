# Release name
PRODUCT_RELEASE_NAME := wt88047

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/dt.img:dt.img \
    $(LOCAL_PATH)/prebuilt/kernel:kernel \
    $(LOCAL_PATH)/recovery.fstab:root/etc/recovery.fstab

# Encryption
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8916

# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := wt88047
PRODUCT_NAME := omni_wt88047
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 2
PRODUCT_MANUFACTURER := Wingtech
