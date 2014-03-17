# Inherit common JAF stuff
$(call inherit-product, vendor/jafier/config/common_full.mk)

# Default Notification/AlarmSound
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/jafier/prebuilt/common/bootanimation/800.zip:system/media/bootanimation.zip
endif
