#!/bin/bash
#
# Copyright (C) 2020 kytoaq <kytoaq@gmail.com>
# Copyright (C) 2020 - 2021 Motorola™ Trinket
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

# Command list
CLONE="git clone -b"
GITHUB="https://github.com"
GITLAB="https:/gitlab.com"

# Organization List
TRINKET_COMMON="trinket-common"
NEMESIS_DEVELOPERS="NemesisDevelopers"
DORITOS_MOTOROLA="DoritosMotorola"

# Repositories List
REPO_DEVICE="device_motorola_doha"
REPO_DEVICE_COMMON="device_motorola_trinket-common"
REPO_VENDOR="vendor_motorola"
REPO_VENDOR_COMMON="vendor_motorola_trinket-common"
REPO_KERNEL="kernel_motorola_trinket"
REPO_SEPOLICY="sepolicy_trinket-common"

# Optional Repositories
SEPOLICY="sepolicy_trinket-common"

# Set Branches for Repositories
STAGING="staging/lineage-17.1"

# Motorola Paths
PATH_DEVICE="device/motorola/doha"
PATH_DEVIE_COMMON="device/motorola/trinket-common"
PATH_VENDOR="vendor/motorola"
PATH_VENDOR_COMMON="vendor/motorola/trinket-common"
PATH_SEPOLICY="device/motorola/trinket-common/sepolicy"
PATH_KERNEL="kernel/motorola/trinket"

# Setup
${CLONE} ${STAGING} ${GITHUB}/${TRINKET_COMMON}/${REPO_DEVICE} ${PATH_DEVICE}
${CLONE} ${STAGING} ${GITHUB}/${TRINKET_COMMON}/${REPO_DEVICE_COMMON} ${PATH_DEVIE_COMMON}
${CLONE} ${STAGING} ${GITHUB}/${TRINKET_COMMON}/${REPO_VENDOR_COMMON} ${PATH_VENDOR_COMMON}
${CLONE} ${STAGING} ${GITHUB}/${TRINKET_COMMON}/${REPO_KERNEL} ${PATH_KERNEL}
${CLONE} ${STAGING} ${GITHUB}/${TRINKET_COMMON}/${REPO_SEPOLICY} ${PATH_SEPOLICY}
