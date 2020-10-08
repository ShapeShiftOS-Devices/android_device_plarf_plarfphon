# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from plarfphon device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := plarf
PRODUCT_DEVICE := plarfphon
PRODUCT_MANUFACTURER := plarfphon
PRODUCT_NAME := aosp_plarfphon
PRODUCT_MODEL := Plarfphone

PRODUCT_GMS_CLIENTID_BASE := android-plarf
TARGET_VENDOR := plarf
TARGET_VENDOR_PRODUCT_NAME := plarfphon
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="qssi-user 10 QKQ1.190910.002 V11.0.8.0.QFQMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Plarf/plarfphon/plarfphon:10/QKQ1.190910.002/V11.0.8.0.QFQMIXM:user/release-keys
