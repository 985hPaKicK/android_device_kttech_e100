# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := TakeLTE

TARGET_BOOTANIMATION_NAME := vertical-720x1280

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/kttech/e100/device_e100.mk)

# Device naming
PRODUCT_DEVICE := e100
PRODUCT_NAME := cm_e100
PRODUCT_BRAND := KTTech
PRODUCT_MODEL := KM-E100
PRODUCT_MANUFACTURER := KTTech
PRODUCT_DEFAULT_LANGUAGE := ko
PRODUCT_DEFAULT_REGION := KR

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=E100 BUILD_FINGERPRINT=KTTech/E100/e100:4.0.4/IMM76D/KM66931:user/release-keys PRIVATE_BUILD_DESC="E100-user 4.0.4 IMM76D KM66931 release-keys" BUILD_NUMBER=KM66931
