#
# Copyright (C) 2017-2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PATH := device/lenovo/karate

# Inherit from karate-common
$(call inherit-product, device/lenovo/karate-common/karate.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

# Properties
-include $(DEVICE_PATH)/vendor_prop.mk

# Audio configuration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(DEVICE_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Camera
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/camera/imx219_karateof_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/imx219_karateof_chromatix.xml \
    $(DEVICE_PATH)/configs/camera/imx219_karateqt_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/imx219_karateqt_chromatix.xml \
    $(DEVICE_PATH)/configs/camera/imx258_karateof_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/imx258_karateof_chromatix.xml \
    $(DEVICE_PATH)/configs/camera/imx258_karateqt_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/imx258_karateqt_chromatix.xml \
    $(DEVICE_PATH)/configs/camera/lenovo_karate_camera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/lenovo_karate_camera.xml

# Keylayouts
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/keylayout/msm8937-karate-snd-card_Button_Jack.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/msm8937-karate-snd-card_Button_Jack.kl

$(call inherit-product-if-exists, vendor/lenovo/karate/karate-vendor.mk)
