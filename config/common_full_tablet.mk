$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit full common Genesis stuff
$(call inherit-product, vendor/genesis/config/common_full.mk)

$(call inherit-product, vendor/genesis/config/telephony.mk)
