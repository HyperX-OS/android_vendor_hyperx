# Versioning System
HYPERX_BASE_VERSION := 5.6.1
EVO_CODENAME := Passion

# Set all versions
EVO_BUILD_TYPE ?= UNOFFICIAL

HYPERX_DATE_YEAR := $(shell date -u +%Y)
HYPERX_DATE_MONTH := $(shell date -u +%m)
HYPERX_DATE_DAY := $(shell date -u +%d)
HYPERX_DATE_HOUR := $(shell date -u +%H)
HYPERX_DATE_MINUTE := $(shell date -u +%M)
HYPERX_BUILD_DATE_UTC := $(shell date -d '$(EVO_DATE_YEAR)-$(EVO_DATE_MONTH)-$(EVO_DATE_DAY) $(EVO_DATE_HOUR):$(EVO_DATE_MINUTE) UTC' +%s)
HYPERX_BUILD_DATE := $(EVO_DATE_YEAR)$(EVO_DATE_MONTH)$(EVO_DATE_DAY)-$(EVO_DATE_HOUR)$(EVO_DATE_MINUTE)
BUILD_DATE_TIME := $(BUILD_TIME)$(BUILD_DATE)

HYPERX_PLATFORM_VERSION := $(PLATFORM_VERSION)

TARGET_PRODUCT_SHORT := $(subst hyperx_,,$(HYPERX_BUILD))

HYPERX_VERSION_DISPLAY := $(HYPERX_CODENAME)-v$(HYPERX_BASE_VERSION)-$(TARGET_PRODUCT_SHORT)-$(HYPERX_BUILD_DATE)-$(HYPERX_BUILD_TYPE)

HYPERX_VERSION := HYPERX_$(HYPERX_BASE_VERSION)_$(HYPERX_BUILD)-$(EHYPERX_PLATFORM_VERSION)-$(HYPERX_BUILD_DATE)-$(HYPERX_BUILD_TYPE)
HYPERX_VERSION_PROP := $(PLATFORM_VERSION)

PRODUCT_GENERIC_PROPERTIES += \
    ro.build.datetime=$(BUILD_DATE_TIME) \
    org.hyperx.version=$(EVO_VERSION) \
    org.hyperx.version.prop=$(EVO_VERSION_PROP) \
    org.hyperx.version.display=$(EVO_VERSION_DISPLAY) \
    org.hyperx.build_version=$(EVO_BASE_VERSION) \
    org.hyperx.build_date=$(EVO_BUILD_DATE) \
    org.hyperx.build_date_utc=$(EVO_BUILD_DATE_UTC) \
    org.hyperx.build_type=$(EVO_BUILD_TYPE) \
    org.hyperx.build_codename=$(EVO_CODENAME)
