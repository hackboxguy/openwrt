#!/bin/sh
unzip -d openwrt goldenorb.zip
cd openwrt/chaoscalmer/
sh -x ./setup
cp ../../mka5v11 openwrt/
cp ../../mkonce openwrt/
cp ../../config_a5-v11 openwrt/configfiles/A5-V11/.config_a5-v11
export http_proxy=
export https_proxy=
export ftp_proxy=
./openwrt/mkonce
