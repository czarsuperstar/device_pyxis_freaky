#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common zenx stuff.
$(call inherit-product, vendor/zenx/config/common_full_phone.mk)
ZENX_BUILD_TYPE := Calamity

# Setup Gapps options

IS_PHONE := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_MINIMAL_APPS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true


# Lawnchair
USE_PIXEL_LAUNCHER := true
$(call inherit-product, vendor/lawnchair/lawnchair.mk)

# Inherit from pyxis device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := pyxis
PRODUCT_NAME := zenx_pyxis
PRODUCT_MODEL :=  Mi 9 Lite
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := pyxis

