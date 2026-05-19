# Set Genesis specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit full common Genesis stuff
$(call inherit-product, vendor/genesis/config/common_full_phone.mk)
