#
# Copyright (C) 2020 Android Open Source Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Aosp stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
Elixir_MAINTAINER := AnoosRagh
IS_PHONE := true
CUSTOM_BUILD_TYPE := OFFICIAL
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_STOCK_ACORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false

# Inherit from device makefile
$(call inherit-product, device/realme/moon/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_moon
PRODUCT_DEVICE := moon
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme G85 Series
PRODUCT_MANUFACTURER := realme

TARGET_BOOT_ANIMATION_RES := 720

# Build info
BUILD_FINGERPRINT := "google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=moon \
    PRODUCT_NAME=moon \
    PRIVATE_BUILD_DESC="sys_oplus_mssi_64_cn-user-11-RP1A.200720.011-1607914664672-release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

