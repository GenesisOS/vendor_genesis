PRODUCT_VERSION_MAJOR = 4
PRODUCT_VERSION_MINOR = 1
GENESIS_VERSION_TAG := Verve

CURRENT_DEVICE=$(shell echo "$(TARGET_PRODUCT)" | cut -d'_' -f 2,3)

GENESIS_BUILDTYPE := UNOFFICIAL

ifeq ($(GENESIS_OFFICIAL), true)
     GENESIS_BUILDTYPE := OFFICIAL
endif

GENESIS_MAINTAINER ?= UNKNOWN

GENESIS_VERSION := GenesisOS-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(GENESIS_VERSION_TAG)-$(CURRENT_DEVICE)-$(GENESIS_BUILDTYPE)-$(shell date -u +%Y%m%d-%H%M)

GENESIS_DISPLAY_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(GENESIS_VERSION_TAG)

# GenesisOS version properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.genesis.version=$(GENESIS_VERSION) \
    ro.genesis.display.version=$(GENESIS_DISPLAY_VERSION) \
    ro.genesis.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.genesis.maintainer=$(GENESIS_MAINTAINER) \
    ro.genesis.releasetype=$(GENESIS_BUILDTYPE) \
    ro.modversion=$(GENESIS_VERSION)

# Signing
ifneq (eng,$(TARGET_BUILD_VARIANT))
ifneq (,$(wildcard vendor/genesis/signing/keys/releasekey.pk8))
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/genesis/signing/keys/releasekey
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.oem_unlock_supported=1
endif
ifneq (,$(wildcard vendor/genesis/signing/keys/otakey.x509.pem))
PRODUCT_OTA_PUBLIC_KEYS := vendor/genesis/signing/keys/otakey.x509.pem
endif
endif
