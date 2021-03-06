# Inherit common JAF stuff
$(call inherit-product, vendor/jafier/config/common.mk)

# Bring in all video files
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

# Include JAF audio files
include vendor/jafier/config/cm_audio.mk

# Include JAF LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/jafier/overlay/dictionaries

# Optional JAF packages
PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam \
    VisualizationWallpapers \
    PhotoTable \
    VoiceDialer \
    SoundRecorder

PRODUCT_PACKAGES += \
    VideoEditor \
    libvideoeditor_jni \
    libvideoeditor_core \
    libvideoeditor_osal \
    libvideoeditor_videofilters \
    libvideoeditorplayer

# Extra tools in JAF
PRODUCT_PACKAGES += \
    vim
