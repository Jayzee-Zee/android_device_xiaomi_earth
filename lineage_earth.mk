#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/earth/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#ngising OS

PRODUCT_NAME := lineage_earth
PRODUCT_DEVICE := earth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22120RN86C

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="earth-user 14 UP1A.230105.007 V816.0.2.0.UCVMIXM release-keys"
    TARGET_ENABLE_BLUR :=false
    PRODUCT_NO_CAMERA := false
    TARGET_BOOT_ANIMATION_RES := 720
    # To include Gapps 
    WITH_GMS := true

    # To Build Google(Dailer, Message, Phone) and BCR
    WITH_GMS_COMMS_SUITE := true

    # To Add cinematic wallpaer support (only supported in gapps build not in vanilla remove this flag for vanilla builds)
    TARGET_SUPPORTS_WALLEFFECT := false

    #Some more GMS Flag
    TARGET_SUPPORTS_GOOGLE_RECORDER := true
    TARGET_INCLUDE_STOCK_ARCORE := false
    TARGET_INCLUDE_STOCK_AICORE := false

    # To Add Bypass Charging Support (need to be adapted in DT and KT as well)
    BYPASS_CHARGE_SUPPORTED  := false

BUILD_FINGERPRINT := Redmi/earth_global/earth:14/UP1A.231005.007/V816.0.2.0.UCVMIXM:user/release-keys


