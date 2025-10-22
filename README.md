# 🌀 QuickWrt OpenWrt Packages

<img src="https://avatars.githubusercontent.com/u/233540802?s=200&v=4" alt="OpenWrt Logo" width="120" align="right">

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

```shell
echo "src-git quickwrt_packages https://github.com/QuickWrt/openwrt_packages" >> feeds.conf.default
./scripts/feeds update quickwrt_packages
./scripts/feeds install -a -p quickwrt_packages
```

然后在 make menuconfig 中选择你需要的插件即可。

## 🔁 同步机制

本仓库通过自动化任务（GitHub Actions）周期性地执行同步：

- 定期拉取上游 OpenWrt 官方与社区插件仓库更新
- 自动检测差异并合并至当前分支
- 确保 QuickWrt 构建时依赖的插件版本与上游保持同步

## 🧩 上游来源

以下为主要同步来源：
| 类型     | 仓库                                                                | 说明                      |
| ------ | ----------------------------------------------------------------- | ----------------------- |
| 科学插件   | [sbwml/openwrt_helloworld](https://github.com/sbwml/openwrt_helloworld)           | 由 sbwml 维护的 openwrt_helloworld 项目           |
| 易有云团队  | [linkease/nas-packages-luci](https://github.com/linkease/nas-packages-luci)                   | 由易有云团队维护的 NAS 相关插件           |
| argon 主题   | [jerrykuku/luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon) | Argon 是一款干净整洁的 OpenWrt LuCI 主题               |
| kucat 主题 | [sirpdboy/luci-theme-kucat](https://github.com/sirpdboy/luci-theme-kucat) | kucat 酷猫主题以酷为美，因动而生。 带5种快捷键的工具栏 |


## 📅 更新计划

- 🕒 每日自动检测上游更新

- 🔄 如有变动则自动触发同步推送

- 📬 保持与上游仓库的版本一致性

## 🧡 License

本项目遵循上游仓库相同的开源许可证，请在使用时遵守相关协议。
