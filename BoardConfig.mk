# Copyright (C) 2021 Paranoid Android
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

DEVICE_PATH := device/xiaomi/apollo

BUILD_BROKEN_MISSING_REQUIRED_MODULES := true

-include device/xiaomi/sm8250-common/BoardConfigCommon.mk

# Audio
AUDIO_FEATURE_ENABLED_DLKM := true
AUDIO_FEATURE_ENABLED_DYNAMIC_LOG := false
AUDIO_FEATURE_ENABLED_SSR := false

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# Display
TARGET_USES_VULKAN := true

# Kernel
KERNEL_DEFCONFIG := apollo_defconfig

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/init/fstab.qcom
TARGET_USERIMAGES_USE_EXT4 := true

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Security patch level
VENDOR_SECURITY_PATCH := 2021-08-01

CONFIG_ACS := true
CONFIG_IEEE80211AC := true
CONFIG_IEEE80211AX := true

# Inherit the proprietary files
include vendor/xiaomi/apollo/BoardConfigVendor.mk
include vendor/xiaomi/sm8250-common/BoardConfigVendor.mk
