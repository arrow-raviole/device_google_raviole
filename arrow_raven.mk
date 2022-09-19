#
# Copyright (C) 2022 The Custom AOSP Project
# Copyright (C) 2022 Paranoid Android
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (arrow_raven,$(TARGET_PRODUCT))

# Inherit some common Arrow stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit Stock Google Camera & Photos.
$(call inherit-product, vendor/google/camera/googlecamera.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven.mk)
$(call inherit-product, device/google/gs101/custom_common.mk)
$(call inherit-product, device/google/raviole/device-custom.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_NAME := arrow_raven

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

#Build with Gapps
ARROW_GAPPS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=raven \
    PRIVATE_BUILD_DESC="raven-user 13 TP1A.220905.004 8927612 release-keys"

BUILD_FINGERPRINT := google/raven/raven:13/TP1A.220905.004/8927612:user/release-keys

PRODUCT_OVERRIDE_GMS_FINGERPRINT := google/raven/raven:13/TP1A.220905.004/8927612:user/release-keys

$(call inherit-product, vendor/google/raven/raven-vendor.mk)

endif
