# Inherit common Batik stuff
$(call inherit-product, vendor/batik/config/common_mobile.mk)

PRODUCT_SIZE := full

# Fonts
PRODUCT_PACKAGES += \
    fonts_customization.xml

# Overlays
#include vendor/overlay/overlays.mk
