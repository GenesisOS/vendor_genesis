WITH_GMS := true

# Pixel Clocks
$(call inherit-product, vendor/pixel/clocks/products/clocks.mk)

# Pixel GMS
$(call inherit-product, vendor/pixel/gms/products/gms.mk)

# Pixel Sounds
$(call inherit-product, vendor/pixel/sounds/products/sounds.mk)

TARGET_INCLUDE_PIXEL_LAUNCHER ?= true
ifeq ($(TARGET_INCLUDE_PIXEL_LAUNCHER),true)
# Pixel Launcher
$(call inherit-product, vendor/pixel/launcher/products/launcher.mk)

# Pixel ThemePicker
$(call inherit-product, vendor/pixel/themepicker/products/themepicker.mk)

PRODUCT_PACKAGES += \
    SettingsOverlayPixel
else
PRODUCT_PACKAGES += \
    SettingsOverlayLauncher3
endif
