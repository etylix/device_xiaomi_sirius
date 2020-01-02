#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/sirius/device.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_sirius
PRODUCT_DEVICE := sirius
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8 SE
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Xiaomi/sirius/sirius:9/PKQ1.181121.001/9.10.10:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sirius-user 9 PKQ1.181121.001 9.10.10 release-keys" \
    PRODUCT_NAME="sirius" \
    TARGET_DEVICE="sirius"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
