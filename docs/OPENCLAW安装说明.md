# OPENCLAW 安装说明

## 快速安装
在仓库根目录运行：

```bash
./scripts/install_openclaw.sh
```

默认会安装到 `OPENCLAW/` 目录，也可以指定目录：

```bash
./scripts/install_openclaw.sh /path/to/OPENCLAW
```

## 失败排查
如果出现 `CONNECT tunnel failed, response 403`，说明当前环境对外网访问受限。
请在可访问 GitHub 的网络下重新执行安装脚本。

## 游戏功能文档同步
每次代码变更后，需要同步更新游戏功能文档；本次新增安装脚本后，已同步本安装文档，确保安装能力可追踪。
