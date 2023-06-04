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

# Inherit from ingres device
$(call inherit-product, device/xiaomi/ingres/device.mk)

PRODUCT_DEVICE := ingres
PRODUCT_NAME := omni_ingres
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi K50G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_ingres-eng 13 SP2A.220405.004 eng.sekaia.20230126.231551 test-keys"

BUILD_FINGERPRINT := Xiaomi/twrp_ingres/ingres:13/SP2A.220405.004/sekaiacg01262154:eng/test-keys
