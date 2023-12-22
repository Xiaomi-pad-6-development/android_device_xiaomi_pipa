#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common rising stuff.
$(call inherit-product, vendor/rising/config/rising.mk)

# Inherit from pipa device
$(call inherit-product, device/xiaomi/pipa/device.mk)

PRODUCT_NAME := lineage_pipa
PRODUCT_DEVICE := pipa
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Pad 6

#GMS
WITH_GAPPS := true

#OS stuff
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true

#RisingOS info
RISING_CHIPSET := Snapdragon®870
RISING_MAINTAINER := Amrutesh
TARGET_PREBUILT_PIXEL_LAUNCHER := false
WITH_GMS :=true
TARGET_CORE_GMS := true
TARGET_ENABLE_BLUR := true

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Xiaomi/pipa/pipa:13/RKQ1.211001.001/V14.0.7.0.TMZCNXM:user/release-keys
