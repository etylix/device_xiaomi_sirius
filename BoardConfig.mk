#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm845-common
-include device/xiaomi/sdm710-common/BoardConfigCommon.mk

BOARD_VENDOR := xiaomi

DEVICE_PATH := device/xiaomi/sirius

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm710
TARGET_NO_BOOTLOADER := true

# Kernel
TARGET_KERNEL_CONFIG := sirius_defconfig

# Assert
TARGET_OTA_ASSERT_DEVICE := sirius

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Display
TARGET_HAS_HDR_DISPLAY := true
TARGET_HAS_WIDE_COLOR_DISPLAY := true
TARGET_USES_COLOR_METADATA := true

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560

# Power
TARGET_TAP_TO_WAKE_NODE := "/dev/input/event3"
TARGET_USES_INTERACTION_BOOST := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Inherit from the proprietary stuffs
-include vendor/xiaomi/sirius/BoardConfigVendor.mk

SELINUX_IGNORE_NEVERALLOWS := true

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE += $(DEVICE_PATH)/framework_manifest.xml
