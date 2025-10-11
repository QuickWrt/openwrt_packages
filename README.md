<img src="https://git.kejizero.online/zhao/image/raw/branch/main/logo.png" alt="logo" width="120">

# 🌀 QuickWrt OpenWrt Packages

<img src="https://avatars.githubusercontent.com/u/53193414?s=200&v=4" alt="OpenWrt Logo" width="120" align="right">

本仓库用于 **同步上游 OpenWrt 插件（packages）** 到 [QuickWrt](https://github.com/QuickWrt) 的私有构建环境中，方便在本地或云端构建时统一依赖源、保持插件版本一致性。

---

## 📦 项目简介

`openwrt_packages` 是一个镜像同步仓库，主要用于：

- 🧩 同步上游常用的 LuCI、应用、依赖包  
- 🛠️ 为 QuickWrt 的固件构建环境提供稳定的软件源  
- 🔄 定期自动更新上游仓库变更  
- 🧱 减少外部依赖，加快编译速度  

---

## 🚀 使用方式

在你的 OpenWrt 源码根目录中，添加本仓库作为 feed：

```bash
echo "src-git quickwrt_packages https://github.com/QuickWrt/openwrt_packages" >> feeds.conf.default
./scripts/feeds update quickwrt_packages
./scripts/feeds install -a -p quickwrt_packages
