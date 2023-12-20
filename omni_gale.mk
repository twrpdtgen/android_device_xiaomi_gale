#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from gale device
$(call inherit-product, device/xiaomi/gale/device.mk)

PRODUCT_DEVICE := gale
PRODUCT_NAME := omni_gale
PRODUCT_BRAND := alps
PRODUCT_MODEL := gale
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_gale-user 12 SP1A.210812.016 V14.0.7.0.TGPMIXM release-keys"

BUILD_FINGERPRINT := alps/vnd_gale/gale:12/SP1A.210812.016/V14.0.7.0.TGPMIXM:user/release-keys
