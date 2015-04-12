#
# Copyright (C) 2011 The Android Open-Source Project
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

# Audio defines
BOARD_USES_GENERIC_AUDIO := false
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true

# Camera defines
USE_CAMERA_STUB := false

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Boot/Recovery image settings
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE :=

# EGL settings
BOARD_EGL_CFG := device/asus/transformer-common/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_HAVE_PIXEL_FORMAT_INFO := true

# Misc display settings
BOARD_USE_SKIA_LCDTEXT := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_USES_LEGACY_SET_POSITION := true

# Acquire signature for WVM
BOARD_USES_LEGACY_ACQUIRE_WVM := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/asus/transformer-common/bluetooth/vnd_tf-common.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/asus/transformer-common/bluetooth

# Support for dock battery
TARGET_HAS_DOCK_BATTERY := true

# Misc flags
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Build with GCC-4.7 for kenrel build
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.7

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"

# Partitions info
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 805306368
BOARD_USERDATAIMAGE_PARTITION_SIZE := 29850022707
BOARD_FLASH_BLOCK_SIZE := 4096

# Allow overriding partition for boot image
TARGET_RELEASETOOL_OTA_FROM_TARGET_ADDITIONAL_ARGS := --override_boot_partition=/staging

# SELinux Defines
# BOARD_SEPOLICY_DIRS := \
#    device/asus/transformer-common/sepolicy

# BOARD_SEPOLICY_UNION := \
#    file_contexts \
#    genfs_contexts \
#    app.te \
#    btmacreader.te \
#    device.te \
#    drmserver.te \
#    init_shell.te \
#    file.te \
#    rild.te \
#    sensors_config.te \
#    surfaceflinger.te \
#    system.te \
#    zygote.te

# Dynamic memory allocation
MALLOC_IMPL := dlmalloc

# Hardware tunables and properties
BOARD_HARDWARE_CLASS := device/asus/transformer-common/cmhw/

# TWRP
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_HAS_LARGE_FILESYSTEM := true
TW_INCLUDE_CRYPTO := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TARGET_RECOVERY_FSTAB := device/asus/transformer-common/ramdisk/fstab.cardhu
BOARD_CUSTOM_BOOTIMG_MK := device/asus/transformer-common/recovery/recovery.mk
