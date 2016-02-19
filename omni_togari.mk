# Copyright 2014 The Android Open Source Project
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

# Assert
TARGET_OTA_ASSERT_DEVICE := C6833,togari

# TWRP Recovery
DEVICE_RESOLUTION := 1080x1920
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"

# Inherit AOSP Rhine common device parts
$(call inherit-product, device/sony/togari/aosp_c6833.mk)

# Inherit Omni GSM telephony parts
$(call inherit-product, device/sony/common/radio.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit Omni product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Override Product Name for OmniROM
PRODUCT_NAME := omni_togari
PRODUCT_MODEL := Xperia Z Ultra
