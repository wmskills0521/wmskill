# wmskill — 设计师 IP 定位与短视频内容工具箱

> 帮设计师找到心智位置，再帮他做出好内容。定位先于内容，专业不输包装。

## 它是什么

wmskill 是一套 TRAE AI Skill，专为设计师打造。用多轮对话帮设计师定位自己、规划选题、生成脚本——不是一本手册，是一个教练。

**核心原则：先定位，再做内容。** 定位不对，拍什么都不会有效。

## 它能做什么

| Skill | 用途 | 触发 |
|---|---|---|
| `/wmskill` | 工具箱入口，判断你的定位状态并路由 | `/wmskill` |
| `/wmskill-positioning` | 十阶段对话，从你的真实业务中萃取唯一主定位 | `/wmskill-positioning` `/wm-positioning` `/定位` |
| `/wmskill-content` | 基于定位生成选题、脚本、栏目体系 | `/wmskill-content` `/wm-content` `/内容` |
| `/wmskill-update` | 一键更新到最新版 | `/wmskill-update` `/wm-update` |

## 适用设计领域

室内设计、家装设计、工装设计、建筑设计、景观设计、软装设计、灯光设计、商业空间设计、酒店设计、餐饮空间设计、办公空间设计、品牌设计、平面设计、包装设计、产品设计、工业设计、服装设计、珠宝设计、全屋定制、高定木作、设计公司老板、设计工作室主理人、设计教育与培训。

## 安装

### 方式一：终端一键安装

```bash
curl -sSL https://raw.githubusercontent.com/wmskills0521/wmskill/main/install.sh | bash
```

重启 Trae 后输入 `/wmskill` 开始。

### 方式二：下载 zip

从 [Releases](https://github.com/wmskills0521/wmskill/releases) 下载最新版 wmskill.zip，解压后把四个文件夹（`wmskill`、`wmskill-positioning`、`wmskill-content`、`wmskill-update`）放入 Trae 的 skills 目录，重启即可。

### 方式三：在 Trae 中一键更新

打开 Trae，输入 `/wmskill-update`，Skill 会自动从 GitHub 同步最新版。

## 使用流程

```
/wmskill → 定位诊断 → /wmskill-content → 选题 → 脚本 → 栏目体系
```

1. 输入 `/wmskill`，工具自动判断你是否已经定位过
2. 没定位 → 进入十阶段诊断，生成《设计师 IP 定位档案》
3. 已定位 → 进入内容教练，给你选题、脚本和栏目方案
4. 需要更新 → 输入 `/wmskill-update`

不知道下一步？输入 `/wmskill`，它会告诉你。

## 开源协议

MIT License — 自由使用、修改、分发。

## 原创方法论

本 Skill 的方法论来自设计师 IP 定位与短视频内容结构化体系。如需深度定制或 1v1 诊断，请联系原创方法论团队。