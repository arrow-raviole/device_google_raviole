#
# Copyright (C) 2022 The Evolution-X Project
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (evolution_raven,$(TARGET_PRODUCT))

# Inherit some common EvolutionX stuff.
$(call inherit-product-if-exists, vendor/evolution/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)
$(call inherit-product, device/google/raviole/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_NAME := evolution_raven

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=raven \
    PRIVATE_BUILD_DESC="raven-user 13 TP1A.220905.004 8927612 release-keys"

BUILD_FINGERPRINT := google/raven/raven:13/TP1A.220905.004/8927612:user/release-keys

$(call inherit-product, vendor/google/raven/raven-vendor.mk)

endif