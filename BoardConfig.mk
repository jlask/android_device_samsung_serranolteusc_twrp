# Copyright (C) 2016 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit from common serrano
-include device/samsung/serrano-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := serranolteusc,R890,SCH-R890

# Inherit from proprietary vendor
-include vendor/samsung/serranolteusc/BoardConfigVendor.mk

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8930_serrano_usc_defconfig

# NFC
BOARD_HAVE_NFC := true

# LED
BOARD_HAVE_MULTI_COLOR_LED := true

# RECOVERY TWRP ---------------------------------------------------------------------------------
RECOVERY_VARIANT := twrp
TARGET_RECOVERY_DEVICE_DIRS := device/samsung/serranolteusc
TARGET_RECOVERY_FSTAB := device/samsung/serranolteusc/twrp.fstab
DEVICE_RESOLUTION := 540x960
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=23 androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive
LZMA_RAMDISK_TARGETS := boot,recovery
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_SAMSUNG := true 
TW_HAS_DOWNLOAD_MODE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_USB_STORAGE := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_FUSE_NTFS := true

# For debugging decrypt in twrp only!
#TARGET_USES_LOGD := true 
# -------------------------------------------------------------------------------

# Custom RIL class
BOARD_RIL_CLASS := ../../../device/samsung/serranolteusc/ril/
