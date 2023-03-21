#
# Copyright (C) 2017 The LineageOS Open Source Project
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

# Inherit from nx563j device
$(call inherit-product, device/nubia/nx595j/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_nx595j
PRODUCT_BRAND := Nubia
PRODUCT_DEVICE := nx595j
PRODUCT_MANUFACTURER := Nubia
PRODUCT_MODEL := Nubia Z17S

PRODUCT_GMS_CLIENTID_BASE := android-zte

TARGET_VENDOR := nubia
TARGET_VENDOR_PRODUCT_NAME := NX595J
TARGET_VENDOR_DEVICE_NAME := NX595J

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=NX595J PRODUCT_NAME=NX595J

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NX595J-user 7.1.1 NMF26X eng.nubia.20200526.133055 release-keys"

BUILD_FINGERPRINT := nubia/NX595J/NX595J:7.1.1/NMF26X/eng.nubia.20200526.133055:user/release-keys