# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/full_cprimeltemtr.mk)

# Setup device configuration
PRODUCT_DEVICE := cprimeltemtr
PRODUCT_NAME := cm_cprimeltemtr
