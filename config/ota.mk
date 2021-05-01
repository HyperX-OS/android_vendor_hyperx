ifeq ($(HYPERX_BUILD_TYPE), OFFICIAL)

HYPERX_OTA_VERSION_CODE := eleven

PRODUCT_GENERIC_PROPERTIES += \
    org.hyperx.ota.version_code=$(EVO_OTA_VERSION_CODE) \
    sys.ota.disable_uncrypt=1

PRODUCT_PACKAGES += \
    Updates

endif
