#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Device Path
DEVICE_PATH := device/huawei/warsaw

## Inherit common device
$(call inherit-product, device/huawei/hi6250-8-common/hi6250.mk)

## Inherit vendor blobs
$(call inherit-product, vendor/huawei/warsaw/warsaw-vendor.mk)

# Display
TARGET_SCREEN_DENSITY := 480
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Init
PRODUCT_PACKAGES += \
    init.hisi.odm.rc

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)
