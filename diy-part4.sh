#!/bin/bash
sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
sed -i '$a src-git infinityfreedom https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
sed -i '$a src-git OpenAppFilter https://github.com/destan19/OpenAppFilter.git' feeds.conf.default
sed -i '$a src-git rosytheme https://github.com/rosywrt/luci-theme-rosy.git' feeds.conf.default
sed -i '$a src-git darkmatter https://github.com/apollo-ng/luci-theme-darkmatter.git' feeds.conf.default
sed -i '$a src-git jerryk https://github.com/jerrykuku/openwrt-package' feeds.conf.default
echo "add to feeds.conf.default success"
git clone https://github.com/jefferymvp/luci-app-koolproxyR.git package/luci-app-koolproxyR
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/lisaac/luci-app-dockerman.git  package/luci-app-dockerman
git clone https://github.com/lisaac/luci-lib-docker.git package/luci-lib-docker
echo "add other app well feeds.conf.default success"
./scripts/feeds clean
./scripts/feeds update -a
rm -rf ./feeds/kenzo/luci-app-ssr-plus
rm -rf ./package/lean/luci-theme-argon
rm -rf ./feeds/kenzo/luci-theme-argon_new
echo "update feeds success,delete noneed app success"
./scripts/feeds install -a
echo "install feeds well"
