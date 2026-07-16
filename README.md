# 栋哥 Codex 主题资源包

给 Codex 桌面端准备的独立栋哥主题包，支持 macOS 与 Windows。它是单独发布的资源包，不会覆盖或替换其他 GitHub 项目。

[下载最新版安装包](https://github.com/Ronnie2025/Codex-Dongge-Skin-Pack/releases/latest)

## 四套主题

| 主题 | 关键词 |
| --- | --- |
| 语言的用法 | 维特根斯坦、书页批注、心理问题 |
| 开源工作台 | dbskill、开源分身、蓝图索引 |
| 心理问题举牌 | 中文独立杂志、直接表达 |
| 经典白板 | 心理问题、先说清楚、试试就知道 |

![语言的用法](macos/bundled-themes/dongge-marginalia/background.png)

安装时会直接询问使用哪一张栋哥图片，安装后也可以从“选择风格”入口切换四套主题。

## 使用方法

### macOS

1. 从 Releases 下载并解压 ZIP。
2. 打开 `macOS` 文件夹，双击 `Install Codex Dream Skin.command`。
3. 选择一套栋哥主题。
4. 安装后从生成的 `栋哥 Codex.app` 打开。

### Windows

1. 安装 Node.js，并确认命令行可以执行 `node`。
2. 从 Releases 下载并解压 ZIP。
3. 在 `Windows` 文件夹中双击 `Install Codex Dream Skin.cmd`。
4. 选择一套栋哥主题，之后从 `栋哥 Codex` 快捷方式打开。

## 安全边界

- 不修改官方 Codex 安装包、`app.asar` 或 `WindowsApps`。
- 不自动退出或重启 Codex。
- 不使用 `--restart-existing`。
- 不安装 LaunchAgent、定时器或自动重应用任务。
- 如果官方 Codex 已经打开且没有调试端口，工具会停止并提示你手动退出。
- 恢复入口可以停用皮肤并恢复官方外观配置。

主题通过本机回环地址上的 CDP 注入。启用主题期间，不要运行来源不明的本机程序。

## 开发与验证

```bash
./macos/tests/run-tests.sh
./scripts/build-unified-release.sh
```

项目采用 MIT 许可；人物图片及相关素材不随 MIT 自动授权，公开再分发前请自行确认肖像与素材授权。

本项目不是 OpenAI 官方产品。Codex 及相关权利归其权利人所有。
