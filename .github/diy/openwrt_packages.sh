#!/bin/bash
function git_sparse_clone() {
branch="$1" rurl="$2" localdir="$3" && shift 3
git clone -b $branch --depth 1 --filter=blob:none --sparse $rurl $localdir
cd $localdir
git sparse-checkout init --cone
git sparse-checkout set $@
mv -n $@ ../
cd ..
rm -rf $localdir
}

function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}

git clone --depth 1 -b v5 https://github.com/sbwml/luci-app-mosdns openwrt-mosdns && mv -n openwrt-mosdns/{luci-app-mosdns,mosdns,v2dat} ./ && rm -rf openwrt-mosdns
git clone --depth 1 -b main https://github.com/sbwml/luci-app-openlist2 openwrt-openlist2 && mv -n openwrt-openlist2/{luci-app-openlist2,openlist2} ./ && rm -rf openwrt-openlist2
git clone --depth 1 -b main https://github.com/sbwml/luci-app-airplay2 openwrt-airplay2 && mv -n openwrt-airplay2/{luci-app-airplay2,airplay2} ./ && rm -rf openwrt-airplay2
git clone --depth 1 -b master https://github.com/sbwml/luci-app-qbittorrent openwrt-qbittorrent && mv -n openwrt-qbittorrent/{qbittorrent,qt6base,qt6tools,rblibtorrent,luci-app-qbittorrent} ./ && rm -rf openwrt-qbittorrent
git clone --depth 1 -b openwrt-24.10 https://github.com/sbwml/autocore-arm
git clone --depth 1 -b main https://github.com/sbwml/openwrt_pkgs && mv -n openwrt_pkgs/{bash-completion,ddns-scripts-aliyun,luci-app-cpufreq,luci-app-ramfree,fw_download_tool,luci-app-socat,luci-app-ota,luci-app-usb-printer,luci-app-wolplus,luci-app-netspeedtest,speedtest-cli} ./ && rm -rf openwrt_pkgs
git clone --depth 1 -b js https://github.com/sirpdboy/luci-theme-kucat openwrt-kucat && mv -n openwrt-kucat/luci-theme-kucat ./ && rm -rf openwrt-kucat
git clone --depth 1 -b main https://github.com/sirpdboy/luci-app-kucat-config
git clone --depth 1 -b main https://github.com/sirpdboy/luci-app-partexp openwrt-partexp && mv -n openwrt-partexp/luci-app-partexp ./ && rm -rf openwrt-partexp
git clone --depth 1 -b openwrt-24.10 https://github.com/QuickWrt/luci-theme-argon openwrt-argon && mv -n openwrt-argon/{luci-app-argon-config,luci-theme-argon} ./ && rm -rf openwrt-argon
git clone --depth 1 -b main https://github.com/timsaya/luci-app-bandix openwrt-bandix && mv -n openwrt-bandix/luci-app-bandix ./ && rm -rf openwrt-bandix
git clone --depth 1 -b main https://github.com/timsaya/openwrt-bandix bandix && mv -n bandix/openwrt-bandix ./ && rm -rf bandix
git clone --depth 1 -b openwrt-24.10 https://github.com/QuickWrt/default-settings
git clone --depth 1 -b main https://github.com/sbwml/luci-app-quickfile openwrt-quickfile && mv -n openwrt-quickfile/{luci-app-quickfile,quickfile} ./ && rm -rf openwrt-quickfile
git clone --depth 1 -b openwrt-24.10 https://github.com/sbwml/luci-app-webdav
git clone --depth 1 -b main https://github.com/sbwml/luci-app-airconnect openwrt-airconnect && mv -n openwrt-airconnect/{airconnect,luci-app-airconnect} ./ && rm -rf openwrt-airconnect
git clone --depth 1 -b main https://github.com/sbwml/package_new_ftp
git clone --depth 1 -b js https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic
sed -i 's/解除网易云音乐播放限制/网易云音乐解锁/g' luci-app-unblockneteasemusic/root/usr/share/luci/menu.d/luci-app-unblockneteasemusic.json
git clone --depth 1 -b lua https://github.com/sirpdboy/luci-app-adguardhome openwrt-adguardhome && mv -n openwrt-adguardhome/luci-app-adguardhome ./ && rm -rf openwrt-adguardhome
sed -i "s/\(option enabled '\)1'/\10'/" luci-app-adguardhome/root/etc/config/AdGuardHome
git clone --depth 1 -b master https://github.com/sbwml/luci-app-mentohust openwrt-mentohust && mv -n openwrt-mentohust/{luci-app-mentohust,mentohust} ./ && rm -rf openwrt-mentohust
git clone --depth 1 -b main https://github.com/gdy666/luci-app-lucky openwrt-lucky && mv -n openwrt-lucky/{luci-app-lucky,lucky} ./ && rm -rf openwrt-lucky
git clone --depth 1 -b master https://github.com/linkease/nas-packages && mv -n nas-packages/multimedia/ffmpeg-remux ./ && rm -rf nas-packages
git clone --depth 1 -b master https://github.com/linkease/nas-packages && mv -n nas-packages/network/services/* ./ && rm -rf nas-packages
git clone --depth 1 -b main https://github.com/linkease/nas-packages-luci nas-luci && mv -n nas-luci/luci/* ./ && rm -rf nas-luci
git clone --depth 1 -b main https://github.com/linkease/istore && mv -n istore/luci/* ./ && rm -rf istore
git clone --depth 1 -b v5 https://github.com/sbwml/openwrt_helloworld && mv -n openwrt_helloworld/{chinadns-ng,dns2socks-rust,dns2socks,dns2tcp,geoview,hysteria,ipt2socks,lua-neturl,luci-app-homeproxy,luci-app-nikki,luci-app-openclash,luci-app-passwall,luci-app-passwall2,luci-app-ssr-plus,microsocks,naiveproxy,nikki,pdnsd,redsocks2,shadow-tls,shadowsocks-libev,shadowsocks-rust,shadowsocksr-libev,simple-obfs,sing-box,tcping,trojan-plus,trojan,tuic-client,v2ray-core,v2ray-geodata,v2ray-plugin,xray-core,xray-plugin} ./ && rm -rf openwrt_helloworld
git clone --depth 1 -b master https://github.com/QiuSimons/luci-app-daed openwrt-dae && mv -n openwrt-dae/{luci-app-daed,daed} ./ && rm -rf openwrt-dae
mkdir -p libcron && wget -O libcron/Makefile https://raw.githubusercontent.com/immortalwrt/packages/refs/heads/master/libs/libcron/Makefile

sed -i \
-e 's?include \.\./\.\./\(lang\|devel\)?include $(TOPDIR)/feeds/packages/\1?' \
-e 's?\.\./\.\./luci.mk?$(TOPDIR)/feeds/luci/luci.mk?' \
*/Makefile

rm -rf ./*/.git ./*/.gitattributes ./*/.svn ./*/.github ./*/.gitignore
#find . -type f -name Makefile -exec sed -i 's/PKG_BUILD_FLAGS:=no-mips16/PKG_USE_MIPS16:=0/g' {} +
exit 0
