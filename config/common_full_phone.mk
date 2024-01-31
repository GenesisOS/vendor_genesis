# Inherit full common Genesis stuff
$(call inherit-product, vendor/genesis/config/common_full.mk)

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

$(call inherit-product, vendor/genesis/config/telephony.mk)
