#!/bin/bash
#
# 
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source

### 获取额外的 LuCI 应用、主题和依赖 ###
git clone https://github.com/iwrt/luci-app-ikoolproxy.git package/luci-app-ikoolproxy
git clone -b master --depth 1 https://github.com/kiddin9/luci-theme-edge package/new/luci-theme-edge
svn export https://github.com/QiuSimons/openwrt-mos/trunk/mosdns package/new/mosdns
svn export https://github.com/QiuSimons/openwrt-mos/trunk/luci-app-mosdns package/new/luci-app-mosdns
git clone https://github.com/lisaac/luci-app-diskman.git package/luci-app-diskman
git clone https://github.com/zzsj0928/luci-app-pushbot package/luci-app-pushbot
echo 'src-git nas https://github.com/linkease/nas-packages.git;master' >> feeds.conf.default
echo 'src-git nas_luci https://github.com/linkease/nas-packages-luci.git;main' >> feeds.conf.default
