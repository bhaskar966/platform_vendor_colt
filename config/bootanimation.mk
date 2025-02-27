# Copyright (C) 2021 The ColtOS Project
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

#Bootanimation

TARGET_BOOT_ANIMATION_RES ?= undefined

ifeq ($(TARGET_BOOT_ANIMATION_RES),720)
     PRODUCT_COPY_FILES += vendor/colt/prebuilt/common/media/bootanimation/720.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),768)
     PRODUCT_COPY_FILES += vendor/colt/prebuilt/common/media/bootanimation/768.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1080)
     PRODUCT_COPY_FILES += vendor/colt/prebuilt/common/media/bootanimation/1080.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1440)
     PRODUCT_COPY_FILES += vendor/colt/prebuilt/common/media/bootanimation/1440.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),undefined)
     $(warning Target bootanimation res is undefined, using generic bootanimation )
     PRODUCT_COPY_FILES += vendor/colt/prebuilt/common/media/bootanimation/bootanimation.zip:system/media/bootanimation.zip
else
     $(warning Defined bootanimation res is wrong, using generic bootanimation )
     PRODUCT_COPY_FILES += vendor/colt/prebuilt/common/media/bootanimation/bootanimation.zip:system/media/bootanimation.zip
endif
