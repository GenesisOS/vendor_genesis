# Set Genesis specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit mini common Genesis stuff
$(call inherit-product, vendor/genesis/config/common_mini_phone.mk)
