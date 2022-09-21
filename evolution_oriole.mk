#
# Copyright (C) 2022 The Evolution-X Project
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (evolution_oriole,$(TARGET_PRODUCT))

# Inherit some common Evolution stuff.
$(call inherit-product-if-exists, vendor/evolution/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)
$(call inherit-product, device/google/raviole/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6
PRODUCT_NAME := evolution_oriole

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 13 TP1A.220905.004 8927612 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:13/TP1A.220905.004/8927612:user/release-keys

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)

endif