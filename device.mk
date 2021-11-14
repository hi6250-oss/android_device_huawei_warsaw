#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Device Path
DEVICE_PATH := device/huawei/warsaw

## Inherit common device
$(call inherit-product, device/huawei/hi6250-common/hi6250.mk)

## Inherit vendor blobs
$(call inherit-product, vendor/huawei/warsaw/warsaw-vendor.mk)

# Display
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay
