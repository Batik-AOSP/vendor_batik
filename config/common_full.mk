# Inherit common Batik stuff
$(call inherit-product, vendor/batik/config/common_mobile.mk)

PRODUCT_SIZE := full

# Fonts
PRODUCT_PACKAGES += \
    fonts_customization.xml

# RRO Overlays
PRODUCT_PACKAGES += \
    NavigationBarModeGesturalOverlayFS
