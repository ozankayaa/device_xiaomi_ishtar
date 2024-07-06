#
# Copyright (C) 2024 The LineageOS Project
#               2024 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/ishtar

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit common Pixel Experience configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier
PRODUCT_DEVICE := ishtar
PRODUCT_NAME := lineage_ishtar
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2304FPN6DG
PRODUCT_MANUFACTURER := Xiaomi



# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_SYSTEM_NAME := ishtar_global
PRODUCT_SYSTEM_DEVICE := ishtar

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ishtar_global-user 14 UKQ1.230804.001 V816.0.6.0.UMAMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/ishtar_global/ishtar:14/UKQ1.230804.001/V816.0.6.0.UMAMIXM:user/release-keys

# Device config
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# TARGET_BUILD_PACKAGE options:
# 1 - vanilla (default)
# 2 - microg
# 3 - gapps
TARGET_BUILD_PACKAGE := 3

# TARGET_LAUNCHER options:
# 1 - stock (default)
# 2 - lawnchair
# 3 - pixel (valid only on gapps builds)
TARGET_LAUNCHER := 1

# GAPPS (valid only for GAPPS builds)
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
# TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Debugging
TARGET_INCLUDE_MATLOG := true

# Maintainer
#ALPHA_BUILD_TYPE := Official
ALPHA_MAINTAINER := OzanKaya
