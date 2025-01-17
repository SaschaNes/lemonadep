#
# Copyright (C) 2021 The LineageOS Project
# Copyright (C) 2021 The Evolution X Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
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

# Inherit from lemonadep device
$(call inherit-product, device/oneplus/lemonadep/device.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/dot/config/common.mk)

WITH_GAPPS := true
DOT_OFFICIAL := false
EXTRA_FOD_ANIMATIONS := true
TARGET_BOOT_ANIMATION_RES := 1440

PRODUCT_NAME := dot_lemonadep
PRODUCT_DEVICE := lemonadep
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2123

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus9Pro \
    PRODUCT_NAME=OnePlus9Pro

BUILD_FINGERPRINT := OnePlus/OnePlus9Pro/OnePlus9Pro:11/RKQ1.201105.002/2107082110:user/release-keys
