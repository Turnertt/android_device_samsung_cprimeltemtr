# Copyright (C) 2015 The CyanogenMod Project
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

LOCAL_PATH := $(call my-dir)

SAMSUNG_TARGETS := cprimeltemtr

ifneq ($(filter $(SAMSUNG_TARGETS),$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)
LOCAL_MODULE := libtime_genoff
LOCAL_MODULE_OWNER := samsung
LOCAL_SRC_FILES := proprietary/vendor/lib/libtime_genoff.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
include $(BUILD_PREBUILT)

# CMNLIB
FIRMWARE_CMNLIB_IMAGES := \
    cmnlib.b00 cmnlib.b01 cmnlib.b02 cmnlib.b03 cmnlib.mdt

FIRMWARE_CMNLIB_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_CMNLIB_IMAGES)))
$(FIRMWARE_CMNLIB_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CMNLIB Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_CMNLIB_SYMLINKS)

# DMVerity
DMV_IMAGES := \
    dmverity.b00 dmverity.b01 dmverity.b02 dmverity.b03 dmverity.mdt

DMV_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(DMV_IMAGES)))
$(DMV_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "DMV firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(DMV_SYMLINKS)

# ISDB
ISDB_IMAGES := \
    isdbtmm.b00 isdbtmm.b01 isdbtmm.b02 isdbtmm.b03 isdbtmm.mdt

ISDB_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(ISDB_IMAGES)))
$(ISDB_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "ISDB firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(ISDB_SYMLINKS)

# KM
KM_IMAGES := \
    keymaste.b00 keymaste.b01 keymaste.b02 keymaste.b03 keymaste.mdt

KM_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/keymaster/,$(notdir $(KM_IMAGES)))
$(KM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Keymaster firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/keymaste$(suffix $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(KM_SYMLINKS)

# Modem
MODEM_IMAGES := \
    modem.b00 modem.b01 modem.b02 modem.b03 modem.b04 modem.b05 \
    modem.b06 modem.b08 modem.b09 modem.b10 modem.b11 modem.b13 \
    modem.b14 modem.b15 modem.b16 modem.b17 modem.b18 modem.b19 \
    modem.b20 modem.b21 modem.b22 modem.b23 modem.b24 modem.b25 \
    modem.b26 modem.b27 modem.b28 modem.mdt mba.mbn

MODEM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(MODEM_IMAGES)))
$(MODEM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Modem firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware-modem/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MODEM_SYMLINKS)

# PLAYREAD
PLAYREADY_IMAGES := \
    playread.b00 playread.b01 playread.b02 playread.b03 playread.mdt

PLAYREADY_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(PLAYREADY_IMAGES)))
$(PLAYREADY_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Playready firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(PLAYREADY_SYMLINKS)

# PROV
PROV_IMAGES := \
    prov.b00 prov.b01 prov.b02 prov.b03 prov.mtd \

PROV_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(PROV_IMAGES)))
$(PROV_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Prov firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(PROV_SYMLINKS)

# Reactive
REACT_IMAGES := \
    reactive.b00 reactive.b01 reactive.b02 reactive.b03 reactive.mdt

REACT_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(REACT_IMAGES)))
$(REACT_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Reactive firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(REACT_SYMLINKS)

# SECSTOR
SECSTOR_IMAGES := \
    sec_stor.b00 sec_stor.b01 sec_stor.b02 sec_stor.b03 sec_stor.mdt

SECSTOR_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(SECSTOR_IMAGES)))
$(SECSTOR_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Secstor firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SECSTOR_SYMLINKS)

# SKM
SKM_IMAGES := \
    skm.b00 skm.b01 skm.b02 skm.b03 skm.mdt

SKM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(SKM_IMAGES)))
$(SKM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SKM firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SKM_SYMLINKS)

# SKMM
SKMM_TA_IMAGES := \
    skmm_ta.b00 skmm_ta.b01 skmm_ta.b02 skmm_ta.b03 skmm_ta.mdt

SKMM_TA_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(SKMM_TA_IMAGES)))
$(SKMM_TA_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SKMM firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SKMM_TA_SYMLINKS)

# SSHDCPAP
SSHDCPAP_IMAGES := \
    sshdcpap.b00 sshdcpap.b01 sshdcpap.b02 sshdcpap.b03 sshdcpap.mdt

SSHDCPAP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(SSHDCPAP_IMAGES)))
$(SSHDCPAP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SSHDCPAP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SSHDCPAP_SYMLINKS)

# TBASE
TBASE_IMAGES := \
    tbase.b00 tbase.b01 tbase.b02 tbase.b03 tbase.mdt

SSHDCPAP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(SSHDCPAP_IMAGES)))
$(TBASE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SSHDCPAP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(TBASE_SYMLINKS)

# TIMA
TIMA_IMAGES := \
    tima_atn.b00 tima_atn.b01 tima_atn.b02 tima_atn.b03 tima_atn.mdt \
    tima_key.b00 tima_key.b01 tima_key.b02 tima_key.b03 tima_key.mdt \
    tima_lkm.b00 tima_lkm.b01 tima_lkm.b02 tima_lkm.b03 tima_lkm.mdt \
    tima_pkm.b00 tima_pkm.b01 tima_pkm.b02 tima_pkm.b03 tima_pkm.mdt

TIMA_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(TIMA_IMAGES)))
$(TIMA_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Tima firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(TIMA_SYMLINKS)

# TZ
TZ_CCM_IMAGES := \
    tz_ccm.b00 tz_ccm.b01 tz_ccm.b02 tz_ccm.b03 tz_ccm.mdt \
    tz_otp.b00 tz_otp.b01 tz_otp.b02 tz_otp.b03 tz_otp.mdt

TZ_CCM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(TZ_CCM_IMAGES)))
$(TZ_CCM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "TZ firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(TZ_CCM_SYMLINKS)

# VENUS
VENUS_IMAGES := \
    venus.b00 venus.b01 venus.b02 venus.b03 venus.b04 venus.mdt

VENUS_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(VENUS_IMAGES)))
$(VENUS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Venus firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(VENUS_SYMLINKS)

# WCNSS
WCNSS_IMAGES := \
    wcnss.b00 wcnss.b01 wcnss.b02 wcnss.b04 wcnss.b06 \
    wcnss.b09 wcnss.b10 wcnss.b11 wcnss.mdt

WCNSS_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(WCNSS_IMAGES)))
$(WCNSS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "WCNSS firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(WCNSS_SYMLINKS)

# WV
WV_IMAGES := \
    widevine.b00 widevine.b01 widevine.b02 widevine.b03 widevine.mdt

WV_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(WV_IMAGES)))
$(WV_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Widevine firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(WV_SYMLINKS)

# Create links for audcal data files
$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wcd9306; \
    ln -sf /data/misc/audio/wcd9320_anc.bin \
    $(TARGET_OUT_ETC)/firmware/wcd9306/wcd9306_anc.bin; \
    ln -sf /data/misc/audio/mbhc.bin \
    $(TARGET_OUT_ETC)/firmware/wcd9306/wcd9306_mbhc.bin)

endif