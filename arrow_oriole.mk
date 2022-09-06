# Inherit some common stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/gs101/custom_common.mk)
$(call inherit-product, device/google/raviole/device-custom.mk)
$(call inherit-product, device/google/raviole/aosp_oriole.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := arrow_oriole
PRODUCT_MODEL := Pixel 6
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 13 TP1A.220905.004 8927612 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:13/TP1A.220905.004/8927612:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
