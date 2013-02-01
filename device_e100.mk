#
# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common msm8960 configs
$(call inherit-product, device/kttech/msm8960-common/msm8960.mk)

DEVICE_PACKAGE_OVERLAYS += device/kttech/e100/overlay

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/kttech/e100/ramdisk/init.rc:root/init.rc \
    device/kttech/e100/ramdisk/init.qcom.rc:root/init.qcom.rc \
    device/kttech/e100/ramdisk/init.target.rc:root/init.target.rc \
    device/kttech/e100/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/kttech/e100/ramdisk/ueventd.rc:root/ueventd.rc \
    device/kttech/e100/ramdisk/initlogo.rle:root/initlogo.rle

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/kttech/e100/configs/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    device/kttech/e100/configs/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh \
    device/kttech/e100/configs/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    device/kttech/e100/configs/init.qcom.mdm_links.sh:/system/etc/init.qcom.mdm_links.sh \
    device/kttech/e100/configs/init.qcom.modem_links.sh:/system/etc/init.qcom.modem_links.sh \
    device/kttech/e100/configs/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
    device/kttech/e100/configs/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    device/kttech/e100/configs/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh

# Init.d
PRODUCT_COPY_FILES += \
    device/kttech/e100/configs/install-recovery.sh:/system/etc/install-recovery.sh \

# JB firmwares
PRODUCT_COPY_FILES += \
    device/kttech/e100/firmware/a225p5_pm4.fw:/system/etc/firmware/a225p5_pm4.fw \
    device/kttech/e100/firmware/a225_pfp.fw:/system/etc/firmware/a225_pfp.fw \
    device/kttech/e100/firmware/a225_pm4.fw:/system/etc/firmware/a225_pm4.fw \
    device/kttech/e100/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    device/kttech/e100/firmware/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw \
    device/kttech/e100/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \
    device/kttech/e100/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw

# JB EGL's
PRODUCT_COPY_FILES += \
    device/kttech/e100/egl_libs/libc2d2_z180.so:/system/lib/libc2d2_z180.so \
    device/kttech/e100/egl_libs/libC2D2.so:/system/lib/libC2D2.so \
    device/kttech/e100/egl_libs/libgsl.so:/system/lib/libgsl.so \
    device/kttech/e100/egl_libs/libOpenVG.so:/system/lib/libOpenVG.so \
    device/kttech/e100/egl_libs/libsc-a2xx.so:/system/lib/libsc-a2xx.so \
    device/kttech/e100/egl_libs/egl/eglsubAndroid.so:/system/lib/egl/eglsubAndroid.so \
    device/kttech/e100/egl_libs/egl/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \
    device/kttech/e100/egl_libs/egl/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \
    device/kttech/e100/egl_libs/egl/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \
    device/kttech/e100/egl_libs/egl/libGLESv2S3D_adreno200.so:/system/lib/egl/libGLESv2S3D_adreno200.so \
    device/kttech/e100/egl_libs/egl/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so

# MSM8960 firmwares
PRODUCT_COPY_FILES += \
    device/kttech/e100/firmware/cyttsp_8960_cdp.hex:/system/etc/firmware/cyttsp_8960_cdp.hex \
    device/kttech/e100/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw \
    device/kttech/e100/firmware/vidc.b00:/system/etc/firmware/vidc.b00 \
    device/kttech/e100/firmware/vidc.b01:/system/etc/firmware/vidc.b01 \
    device/kttech/e100/firmware/vidc.b02:/system/etc/firmware/vidc.b02 \
    device/kttech/e100/firmware/vidc.b03:/system/etc/firmware/vidc.b03 \
    device/kttech/e100/firmware/vidc.mdt:/system/etc/firmware/vidc.mdt \
    device/kttech/e100/firmware/vidcfw.elf:/system/etc/firmware/vidcfw.elf

# Sensor (Use EF44S's lib & bin)
PRODUCT_COPY_FILES += \
    device/kttech/e100/sensor/sensors.qcom:/system/bin/sensors.qcom \
    device/kttech/e100/sensor/libsensor1.so:/system/lib/libsensor1.so

# GPS config
PRODUCT_COPY_FILES += device/common/gps/gps.conf_AS:system/etc/gps.conf

# Media config
PRODUCT_COPY_FILES += \
    device/kttech/e100/configs/media_profiles.xml:system/etc/media_profiles.xml

# vold config
PRODUCT_COPY_FILES += \
    device/kttech/e100/configs/vold.fstab:system/etc/vold.fstab

# wifi config
PRODUCT_COPY_FILES += \
    device/kttech/e100/configs/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf

# Wifi firmware
PRODUCT_COPY_FILES += \
    device/kttech/e100/firmware/WCNSS_cfg.dat:/system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/kttech/e100/firmware/WCNSS_qcom_cfg.ini:/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    device/kttech/e100/firmware/WCNSS_qcom_wlan_nv.bin:/system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Nfc lib
PRODUCT_COPY_FILES += \
    device/kttech/e100/prebuilt/libpn544_fw.so:/system/vendor/firmware/libpn544_fw.so

# thermald config
PRODUCT_COPY_FILES += \
    device/kttech/e100/configs/thermald.conf:/system/etc/thermald.conf

# Sound effects
PRODUCT_COPY_FILES += \
    device/kttech/e100/configs/audio_effects.conf:system/etc/audio_effects.conf

# Audio firmware
PRODUCT_COPY_FILES += \
    device/kttech/e100/firmware/mbhc.bin:/system/etc/firmware/wcd9310/mbhc.bin \
    device/kttech/e100/firmware/wcd9310_anc.bin:/system/etc/firmware/wcd9310/wcd9310_anc.bin \

# DSP
PRODUCT_COPY_FILES += \
    device/kttech/e100/dsp/snd_soc_msm/DL_REC:/system/etc/snd_soc_msm/DL_REC \
    device/kttech/e100/dsp/snd_soc_msm/DL_REC_2x:/system/etc/snd_soc_msm/DL_REC_2x \
    device/kttech/e100/dsp/snd_soc_msm/FM_A2DP_REC:/system/etc/snd_soc_msm/FM_A2DP_REC \
    device/kttech/e100/dsp/snd_soc_msm/FM_A2DP_REC_2x:/system/etc/snd_soc_msm/FM_A2DP_REC_2x \
    device/kttech/e100/dsp/snd_soc_msm/FM_Digital_Radio:/system/etc/snd_soc_msm/FM_Digital_Radio \
    device/kttech/e100/dsp/snd_soc_msm/FM_Digital_Radio_2x:/system/etc/snd_soc_msm/FM_Digital_Radio_2x \
    device/kttech/e100/dsp/snd_soc_msm/FM_REC:/system/etc/snd_soc_msm/FM_REC \
    device/kttech/e100/dsp/snd_soc_msm/FM_REC_2x:/system/etc/snd_soc_msm/FM_REC_2x \
    device/kttech/e100/dsp/snd_soc_msm/HiFi:/system/etc/snd_soc_msm/HiFi \
    device/kttech/e100/dsp/snd_soc_msm/HiFi_2x:/system/etc/snd_soc_msm/HiFi_2x \
    device/kttech/e100/dsp/snd_soc_msm/HiFi_Low_Power:/system/etc/snd_soc_msm/HiFi_Low_Power \
    device/kttech/e100/dsp/snd_soc_msm/HiFi_Low_Power_2x:/system/etc/snd_soc_msm/HiFi_Low_Power_2x \
    device/kttech/e100/dsp/snd_soc_msm/HiFi_Rec:/system/etc/snd_soc_msm/HiFi_Rec \
    device/kttech/e100/dsp/snd_soc_msm/HiFi_Rec_2x:/system/etc/snd_soc_msm/HiFi_Rec_2x \
    device/kttech/e100/dsp/snd_soc_msm/snd_soc_msm:/system/etc/snd_soc_msm/snd_soc_msm \
    device/kttech/e100/dsp/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/kttech/e100/dsp/snd_soc_msm/UL_DL_REC:/system/etc/snd_soc_msm/UL_DL_REC \
    device/kttech/e100/dsp/snd_soc_msm/UL_DL_REC_2x:/system/etc/snd_soc_msm/UL_DL_REC_2x \
    device/kttech/e100/dsp/snd_soc_msm/Voice_Call:/system/etc/snd_soc_msm/Voice_Call \
    device/kttech/e100/dsp/snd_soc_msm/Voice_Call_2x:/system/etc/snd_soc_msm/Voice_Call_2x \
    device/kttech/e100/dsp/snd_soc_msm/Voice_Call_IP:/system/etc/snd_soc_msm/Voice_Call_IP \
    device/kttech/e100/dsp/snd_soc_msm/Voice_Call_IP_2x:/system/etc/snd_soc_msm/Voice_Call_IP_2x

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/kttech/e100/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/kttech/e100/keylayout/melfas-ts.kl:system/usr/keylayout/melfas-ts.kl \
    device/kttech/e100/keylayout/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/kttech/e100/idc/melfas-ts.idc:system/usr/idc/melfas-ts.idc

# Kernel modules
PRODUCT_COPY_FILES += \
    device/kttech/e100/modules/wlan.ko:/system/lib/modules/wlan.ko

# KAF
PRODUCT_COPY_FILES += \
    device/kttech/e100/configs/device_info.xml:/system/kaf/device_info.xml

# Camera
PRODUCT_PACKAGES += \
    libcameraservice

# Torch
PRODUCT_PACKAGES += \
    Torch

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += ko_KR xhdpi

# iccIO fixes
FRAMEWORKS_BASE_SUBDIRS += ../../$(LOCAL_PATH)/ril/

# call the proprietary setup
$(call inherit-product-if-exists, vendor/kttech/e100/e100-vendor.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
