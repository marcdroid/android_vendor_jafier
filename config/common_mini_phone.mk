# Inherit common JAF stuff
$(call inherit-product, vendor/jafier/config/common.mk)

# Include jafier audio files
include vendor/jafier/config/cm_audio.mk

# Default Notification/AlarmSound
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/jafier/prebuilt/common/bootanimation/320.zip:system/media/bootanimation.zip
endif

$(call inherit-product, vendor/jafier/config/telephony.mk)
