# design-md-skill

[简体中文](README.md)

`design-md` is an Agent Skill for Claude Code, Codex, and other tools that support Agent Skills. It includes 84 `DESIGN.md` files based on the visual styles of products such as Linear, Notion, and Stripe. Describe the look you want in English or Chinese, and the agent uses a bilingual index to find one or two references for your project.

## How it works

| Layer | Contents | When the agent reads it |
| --- | --- | --- |
| Skill description | A short summary of when to use the skill | During skill discovery |
| [`SKILL.md`](SKILL.md) | The bilingual style index and selection workflow | When the skill is relevant to the request |
| `designs/<site>/DESIGN.md` | Colors, typography, spacing, corner radii, and component guidelines | For the selected references |

When the request names a product, the agent opens its design file directly. For a broad request, it offers two or three options and briefly describes each so you can choose.

## Installation

```bash
# Claude Code (global)
git clone https://github.com/AdenXie/design-md-skill.git ~/.claude/skills/design-md

# Codex and other agents that read ~/.agents/skills
git clone https://github.com/AdenXie/design-md-skill.git ~/.agents/skills/design-md
```

For a project-specific Claude Code installation, clone the repository into `.claude/skills/design-md/` at the project root.

## Example prompts

| Prompt | What the agent does |
| --- | --- |
| “Build a tech-inspired landing page.” | Suggests references such as Linear, Vercel, and x.ai and describes their visual styles. |
| “Build a settings page that looks like Notion.” | Opens [`designs/notion/DESIGN.md`](designs/notion/DESIGN.md) and applies its design guidelines. |
| “Use Stripe’s style throughout this project.” | Copies [`designs/stripe/DESIGN.md`](designs/stripe/DESIGN.md) to the project root as `DESIGN.md` and adds an instruction to follow it in `CLAUDE.md` or `AGENTS.md`. |

## Updating the library

Run the update script from the repository root.

```bash
bash scripts/update.sh
```

The script refreshes `designs/` from upstream and lists added and removed sites. Update the index in `SKILL.md` to match.

## Sources and attribution

The `DESIGN.md` files in `designs/` come from [VoltAgent/awesome-design-md](https://github.com/VoltAgent/awesome-design-md) (MIT License, © 2026 VoltAgent). They were imported unchanged from commit `fcc7028`. This repository adds the bilingual index, the selection workflow, and the update script.

The design files analyze public websites for visual reference. This project has no affiliation with the brands it references. Trademarks belong to their respective owners. Use your own brand assets and fonts you have permission to use.

## License

[MIT](LICENSE)
