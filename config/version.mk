PRODUCT_VERSION_MAJOR = 1
PRODUCT_VERSION_MINOR = 0
GENESIS_VERSION_TAG := Utopia

CURRENT_DEVICE=$(shell echo "$(TARGET_PRODUCT)" | cut -d'_' -f 2,3)

GENESIS_BUILDTYPE := UNOFFICIAL

ifeq ($(GENESIS_OFFICIAL), true)
     GENESIS_BUILDTYPE := OFFICIAL
endif

GENESIS_VERSION := GenesisOS-$(GENESIS_VERSION_TAG)-v$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(CURRENT_DEVICE)-$(GENESIS_BUILDTYPE)-$(shell date -u +%Y%m%d-%H%M)

GENESIS_DISPLAY_VERSION := $(GENESIS_VERSION_TAG)-v$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)
