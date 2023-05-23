# Boot Animation

# 1080p
ifeq ($(TARGET_BOOT_ANIMATION_RES),1080)
PRODUCT_COPY_FILES += vendor/yuki/prebuilt/common/bootanimation/bootanimation_1080.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
# 720p
else ifeq ($(TARGET_BOOT_ANIMATION_RES),720)
PRODUCT_COPY_FILES += vendor/yuki/prebuilt/common/bootanimation/bootanimation_720.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
# 1440
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1440)
PRODUCT_COPY_FILES += vendor/yuki/prebuilt/common/bootanimation/bootanimation_1440.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
# Default to 720p if the device does not set the flag.
else
PRODUCT_COPY_FILES += vendor/yuki/prebuilt/common/bootanimation/bootanimation_720.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif
