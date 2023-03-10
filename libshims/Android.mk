#
# Copyright (C) 2019 The LineageOS Project
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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := nubia_image_algorithm_shim.cpp
LOCAL_SHARED_LIBRARIES := libui libutils
LOCAL_MODULE := libNubiaImageAlgorithm_shim
LOCAL_MODULE_TAGS := optional
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_STATIC_LIBRARES := libgui_vendor
LOCAL_MODULE := libfui
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_VENDOR_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libpowermanager.vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PREBUILT_MODULE_FILE := $(call intermediates-dir-for,SHARED_LIBRARIES,libpowermanager)/libpowermanager.so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_TAGS := optional
LOCAL_INSTALLED_MODULE_STEM := libpowermanager.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_VENDOR_MODULE := true
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)
