## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := shl22

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/sharp/shl22/device_shl22.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := shl22
PRODUCT_NAME := cm_shl22
PRODUCT_BRAND := sharp
PRODUCT_MODEL := shl22
PRODUCT_MANUFACTURER := sharp
