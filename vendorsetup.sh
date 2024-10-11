#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Lunch combo
# add_lunch_combo omni_ingres-user
# add_lunch_combo omni_ingres-userdebug
# add_lunch_combo omni_ingres-eng

# CCACHE
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_MAXSIZE="32G"
export CCACHE_DIR="/mnt/ccache"

# Warn if CCACHE_DIR is an invalid directory
if [ ! -d ${CCACHE_DIR} ];
 then
   echo "CCACHE Directory/Partition is not mounted at \"${CCACHE_DIR}\""
   echo "Please edit the CCACHE_DIR build variable or mount the directory."
fi
