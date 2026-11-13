# design-md-skill

一个给 AI 编程代理（Claude Code、Codex 等支持 Agent Skills 的工具）用的 Skill：内置 84 份按知名产品风格整理的 `DESIGN.md` 设计规范。你只需要用自然语言描述想要的风格，比如「科技风」「高级感」「像 Linear 那样」，代理就会自己从索引里挑出最合适的 1～2 份来读，**不会把整个库塞进上下文**。

An Agent Skill bundling 84 `DESIGN.md` design systems inspired by well-known products, with a bilingual (中文/English) style index so agents can pick the right one from a natural-language request — without loading the whole library into context.

## 工作原理

| 层级 | 内容 | 何时进入上下文 |
|---|---|---|
| description | 一句话触发说明 | 始终在（约 100 token） |
| `SKILL.md` | 风格索引 + 选用流程 | 代理判断需要时 |
| `designs/<site>/DESIGN.md` | 完整设计规范（约 30KB） | 仅被选中的 1～2 份 |

风格描述模糊时，代理会先给出 2～3 个候选让你选，不会擅自挑一个。

## 安装

```bash
# Claude Code（全局）
git clone https://github.com/AdenXie/design-md-skill.git ~/.claude/skills/design-md

# 其他读取 ~/.agents/skills 的代理
git clone https://github.com/AdenXie/design-md-skill.git ~/.agents/skills/design-md
```

也可以只放进某个项目的 `.claude/skills/design-md/`。

## 用法示例

- 「帮我做一个科技风的落地页」→ 给出 Linear / Vercel / x.ai 等候选
- 「做一个像 Notion 那样的设置页」→ 直接读 `designs/notion/DESIGN.md`
- 「这个项目以后都用 Stripe 的风格」→ 复制为项目根目录的 `DESIGN.md`，并写入 CLAUDE.md

## 更新

```bash
bash scripts/update.sh
```

从上游同步 `designs/`，并列出新增和删除的站点；新增站点的索引行需要手动补进 `SKILL.md`。

## 来源与声明

- `designs/` 下的全部 `DESIGN.md` 来自 [VoltAgent/awesome-design-md](https://github.com/VoltAgent/awesome-design-md)（MIT License, © 2026 VoltAgent），同步自 commit `fcc7028`，未做修改。
- 本仓库新增的是 `SKILL.md`（中英文风格索引、选用流程）和 `scripts/update.sh`。
- 这些规范是对公开网站视觉风格的分析，**仅供风格参考**。本项目与文中提到的任何公司或品牌均无关联，所有商标归各自所有者。请不要在你的产品中使用他人的 logo、品牌名或专有字体。

## License

[MIT](LICENSE)
