# Inherit common mobile Batik stuff
$(call inherit-product, vendor/batik/config/common.mk)

# Default notification/alarm sounds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

# Apps
PRODUCT_PACKAGES += \
    Eleven

ifeq ($(PRODUCT_TYPE), go)
PRODUCT_PACKAGES += \
    batikLauncherQuickStepGo

PRODUCT_DEXPREOPT_SPEED_APPS += \
    batikLauncherQuickStepGo
else
PRODUCT_PACKAGES += \
    batikLauncherQuickStep

PRODUCT_DEXPREOPT_SPEED_APPS += \
    batikLauncherQuickStep
endif

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    product_charger_res_images

# Customizations
PRODUCT_PACKAGES += \
    DisplayCutoutEmulationNarrowOverlay \
    DisplayCutoutEmulationWideOverlay \
    NoCutoutOverlay \
    NavigationBarMode2ButtonOverlay

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet
