# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_128_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from plarfphon device
$(call inherit-product, $(LOCAL_PATH)/device.mk)
$(call inherit-product, $(LOCAL_PATH)/configurations.mk)

PRODUCT_BRAND := plarf
PRODUCT_DEVICE := plarfphon
PRODUCT_MANUFACTURER := plarfphon
PRODUCT_NAME := aosp_plarfphon
PRODUCT_MODEL := Plarfphone

PRODUCT_GMS_CLIENTID_BASE := android-plarf
TARGET_VENDOR := plarf
TARGET_VENDOR_PRODUCT_NAME := plarfphon

BUILD_FINGERPRINT := plarf/plarfphon/plarfphon:12/SP1A.200720.011/6746289:eng/release-keys
