#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
sed -i 's/# CONFIG_X86_DEBUG_FPU is not set/CONFIG_X86_DEBUG_FPU=y/g' target/linux/x86/config-5.4
sed -i 's/root::0:0:99999:7:::/root:$1$ZzLkZmEb$Kpkpyxaj6bYCEtrs7LqWs.:18612:0:99999:7:::/g' package/base-files/files/etc/shadow
rm -rf feeds/packages/net/smartdns
