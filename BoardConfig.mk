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

include device/sony/rhine-common/PlatformConfigOmni.mk

TARGET_BOOTLOADER_BOARD_NAME := C6833

# Inline Kernel
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
TARGET_KERNEL_SOURCE := kernel/sony/togari
TARGET_KERNEL_CONFIG := aosp_rhine_togari_defconfig
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-eabi-
TARGET_USES_UNCOMPRESSED_KERNEL := true

# TWRP flags
TW_THEME := portrait_hdpi
TW_NO_USB_STORAGE := true
TW_HAS_NO_RECOVERY_PARTITION := true
TW_DEFAULT_EXTERNAL_STORAGE := true

BOARD_KERNEL_CMDLINE += androidboot.hardware=togari
BOARD_KERNEL_CMDLINE += mem=1759M
