# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# GenesisOS System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.genesis.version=$(GENESIS_VERSION) \
    ro.genesis.releasetype=$(GENESIS_BUILDTYPE) \
    ro.genesis.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(GENESIS_VERSION)

# GenesisOS Platform Display Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.genesis.display.version=$(GENESIS_DISPLAY_VERSION)
