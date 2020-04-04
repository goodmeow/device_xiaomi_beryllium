#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/beryllium/device.mk)
$(call inherit-product, vendor/xiaomi/firmware/beryllium/firmware.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_WIFI_EXT := true

# Ancient
ANCIENT_OFFICIAL := true
ANCIENT_NOGAPPS := true
FORCE_OTA := true
TARGET_GAPPS_ARCH :=arm64

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := ancient_beryllium
PRODUCT_DEVICE := beryllium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := POCO F1
PRODUCT_MANUFACTURER := Xiaomi


BUILD_FINGERPRINT := "google/coral/coral:10/QQ2A.200501.001.B2/6352890:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="beryllium-user 10 QKQ1.190828.002 V11.0.6.0.QEJMIXM release-keys" \
    PRODUCT_NAME="beryllium" \

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi