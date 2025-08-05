# Inherit mobile full common Genesis stuff
$(call inherit-product, vendor/genesis/config/common_mobile_full.mk)

# Define tablet-specific variables
TARGET_IS_TABLET := true
WITH_GMS_COMMS_SUITE := false

# Inherit tablet common Genesis stuff
$(call inherit-product, vendor/genesis/config/tablet.mk)

$(call inherit-product, vendor/genesis/config/wifionly.mk)
