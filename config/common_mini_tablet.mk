# Inherit mobile mini common Genesis stuff
$(call inherit-product, vendor/genesis/config/common_mobile_mini.mk)

# Define tablet-specific variables
TARGET_IS_TABLET := true

# Inherit tablet common Genesis stuff
$(call inherit-product, vendor/genesis/config/tablet.mk)

$(call inherit-product, vendor/genesis/config/telephony.mk)
