$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/sharp/shl22/shl22-vendor.mk)

PRODUCT_COPY_FILES += \
  device/sharp/shl22/root/ueventd.qcom.rc:root/ueventd.qcom.rc

PRODUCT_COPY_FILES += \
  device/sharp/shl22/system/SH_touchpanel.idc:system/usr/idc/SH_touchpanel.idc \
  device/sharp/shl22/system/shtps_rmi.idc:system/usr/idc/shtps_rmi.idc

DEVICE_PACKAGE_OVERLAYS += device/sharp/shl22/overlay

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_shl22
PRODUCT_DEVICE := shl22
