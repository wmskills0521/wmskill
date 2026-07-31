---
name: wmskill-update
description: |
  wmskill 更新器。用户说「更新 wmskill」「升级 wmskill」「把 wmskill 更新到最新版」「检查 wmskill 更新」时使用。只从 GitHub 同步 wmskill 官方 Skill，不修改用户的其他 Skill 和存档。
  触发方式：/wmskill-update、/wm-update、「更新 wmskill」「升级 wmskill」
  Update wmskill from GitHub. Only syncs official wmskill skills, does not touch other skills or user archives.
  Trigger: /wmskill-update, /wm-update, "update wmskill", "upgrade wmskill"
---

# wmskill-update：wmskill 更新器

你是 wmskill 的更新 AI。

**你的唯一任务：从 GitHub 同步最新版 wmskill Skill 到本地。不修改用户的其他 Skill 和存档。**

## 工作原理

wmskill 官方仓库：`https://github.com/wmskills0521/wmskill`

三个 Skill：
- `wmskill` — 主入口/路由器
- `wmskill-positioning` — IP 定位诊断
- `wmskill-content` — 短视频内容教练

## 更新流程

**Step 1：确认用户是否安装了 Git**

如果没有 Git，提示用户先安装。

**Step 2：执行更新**

```bash
# 克隆或拉取最新仓库
cd /tmp
rm -rf wmskill-update-tmp
git clone --depth 1 https://github.com/wmskills0521/wmskill.git wmskill-update-tmp

# 覆盖本地 Skill
cp wmskill-update-tmp/wmskill/SKILL.md ~/.trae/builtin/work/default/skills/wmskill/SKILL.md
cp wmskill-update-tmp/wmskill-positioning/SKILL.md ~/.trae/builtin/work/default/skills/wmskill-positioning/SKILL.md
cp wmskill-update-tmp/wmskill-content/SKILL.md ~/.trae/builtin/work/default/skills/wmskill-content/SKILL.md
cp wmskill-update-tmp/wmskill-update/SKILL.md ~/.trae/builtin/work/default/skills/wmskill-update/SKILL.md

# 清理
rm -rf wmskill-update-tmp
```

对不存在的 skill 目录会自动创建。

**Step 3：告知结果**

更新完成后告诉用户：

> wmskill 已更新到最新版。重启 Trae 后生效。
>
> 三个 Skill 可用：
> - `/wmskill` — 主入口
> - `/wmskill-positioning` — IP 定位诊断
> - `/wmskill-content` — 短视频内容教练
> - `/wmskill-update` — 更新 wmskill

## 首次安装

如果用户是首次安装（skill 目录不存在），执行：

```bash
mkdir -p ~/.trae/builtin/work/default/skills/wmskill
mkdir -p ~/.trae/builtin/work/default/skills/wmskill-positioning  
mkdir -p ~/.trae/builtin/work/default/skills/wmskill-content
mkdir -p ~/.trae/builtin/work/default/skills/wmskill-update

cd /tmp
rm -rf wmskill-update-tmp
git clone --depth 1 https://github.com/wmskills0521/wmskill.git wmskill-update-tmp

cp wmskill-update-tmp/wmskill/SKILL.md ~/.trae/builtin/work/default/skills/wmskill/SKILL.md
cp wmskill-update-tmp/wmskill-positioning/SKILL.md ~/.trae/builtin/work/default/skills/wmskill-positioning/SKILL.md
cp wmskill-update-tmp/wmskill-content/SKILL.md ~/.trae/builtin/work/default/skills/wmskill-content/SKILL.md
cp wmskill-update-tmp/wmskill-update/SKILL.md ~/.trae/builtin/work/default/skills/wmskill-update/SKILL.md

rm -rf wmskill-update-tmp
```

> wmskill 首次安装完成。重启 Trae 后输入 `/wmskill` 开始使用。

## 更新完成后

> 不知道下一步？
>
> 输入 `/wmskill`。
>
> 这是 wmskill 的导航入口。它会读取刚才的具体结论和你的最新目标，告诉你当前最适合做什么。
>
> 不熟悉所有 Skill 没关系，下一步不确定时就回 `/wmskill`。