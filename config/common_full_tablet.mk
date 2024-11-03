# Inherit mobile full common Genesis stuff
$(call inherit-product, vendor/genesis/config/common_mobile_full.mk)

# Inherit tablet common Genesis stuff
$(call inherit-product, vendor/genesis/config/tablet.mk)

$(call inherit-product, vendor/genesis/config/telephony.mk)
