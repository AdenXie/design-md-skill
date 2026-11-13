---
name: design-md
description: "Library of 84 ready-made DESIGN.md design systems inspired by well-known products (Linear, Vercel, Stripe, Apple, Notion, Tesla, Spotify, etc.). Use when the user wants a page, site, app UI or component in a particular visual style or mood (e.g. 科技风, 极简, 暗黑, 高级感, 温暖, 杂志风, 复古, 金融感, 'like Linear', 'Apple-style'), asks for a design reference or inspiration, or needs a DESIGN.md / design tokens to follow before building UI. Picks the closest 1–2 designs from an index and reads only those."
metadata:
  version: 1.0.0
  source: https://github.com/VoltAgent/awesome-design-md (MIT, commit fcc7028)
---

# design-md：按风格挑选现成的 DESIGN.md

`designs/<site>/DESIGN.md` 下有 84 份设计规范，每份大约 30KB，包含颜色、字体、间距、圆角、组件和使用规则。**不要全部读取。**按下面的流程操作。

## 流程

1. **理解需求**：把用户的说法（如「科技风」「高级感」「像 Notion 那样」）拆成几个维度：明/暗底、主色、气质、行业。
2. **查索引**：在下表里挑最匹配的 1～2 个。用户直接点名某个品牌时，就用那一个。
3. **模糊就先问**：如果描述很宽泛（只说了「科技风」「好看点」），先给出 2～3 个候选，每个用一句话说明区别（例如「Vercel：白底黑字极简」「Linear：近黑底加淡紫点缀」「NVIDIA：黑白配荧光绿，偏硬核」），让用户选。用户已经明确授权你自己挑时，直接选最合适的那个，并说明理由。
4. **只读选中的**：读 `designs/<site>/DESIGN.md`。文件很大时，先读开头的 frontmatter（tokens），再按需读正文。
5. **应用**：
   - 一次性页面：直接照规范实现。
   - 项目要长期使用：把它复制成项目根目录的 `DESIGN.md`，并在项目的 CLAUDE.md / AGENTS.md 里加一句「UI 遵循 ./DESIGN.md」。以后在这个项目里就不用再检索了。
   - 可以混搭（例如用 A 的排版和 B 的配色），但要说明清楚取了哪部分。
6. **品牌提醒**：这些规范是参照真实品牌提炼出来的，只拿来借鉴风格。不要照搬对方的 logo、品牌名、专有字体或标志性文案；替换成项目自己的品牌元素和可用字体（如 Inter、Geist、思源黑体等）。

## 索引

| site | 中文风格标签 | 底色 / 主色 | English keywords |
|---|---|---|---|
| **AI / 开发者工具** ||||
| linear.app | 科技感、暗黑、精致克制、SaaS、开发者工具 | 近黑 / 淡紫蓝 | dark, refined, product-UI, dense |
| vercel | 科技感、黑白极简、高对比、几何、开发者 | 白 / 黑 + 彩色网格渐变 | monochrome, minimal, mesh-gradient |
| cursor | 开发者工具、温暖奶油底、编辑感、低调 | 暖奶油 / 暖黑 | warm, editorial, dev-tools |
| raycast | 科技感、暗黑、工具效率、命令面板、细线 | 近黑 / 白 + 彩色点缀 | dark, command-palette, hairline |
| warp | 终端、暖暗灰、简洁、开发者 | 暖炭灰 / 白 | dark-warm, terminal, clean |
| opencode.ai | 全等宽字体、极客、终端、极简 | 白或黑 / 等宽 | monospace, hacker, minimal |
| ollama | 极简到极致、README 风、开源、朴素 | 白 / 黑 | ultra-minimal, readme, plain |
| voltagent | 科技感、暗黑、电光绿、代码展示、AI agent | 近黑 / 电光绿 | dark, neon-green, code |
| composio | 科技感、暗黑、电光深蓝、AI 集成 | 近黑 / 深电蓝 | dark, technical, electric-blue |
| supabase | 开源、数据库、翠绿、干净、产品截图 | 白/近黑 / 翡翠绿 | emerald, clean, dev-platform |
| sanity | 暗黑、夜间指挥中心、精确、结构化 | 近黑 / 红橙点缀 | dark, precise, structured |
| sentry | 深紫夜空、荧光青柠、插画、俏皮极客 | 深紫 / 青柠 | purple-midnight, lime, playful |
| posthog | 手绘草图本、奶油底、俏皮、开源分析 | 暖奶油 / 橙黄 | sketchbook, playful, cream |
| resend | 开发者工具 + 编辑排版、衬线、暗黑精致 | 黑 / 白 | dark, editorial-serif, elegant |
| replicate | 艺术 zine、大胆、开发者、色块 | 白 / 红橙 | art-zine, bold, quirky |
| expo | 基础设施、白底天蓝渐变、低调可信 | 白 / 天蓝 | clean, sky-gradient, calm |
| mintlify | 文档、天空渐变、云朵插画、清新 | 白 / 绿 + 天蓝 | docs, airy, gradient |
| hashicorp | 企业基础设施、黑底、多产品色 | 黑 / 紫黄粉青 | enterprise, dark, multi-accent |
| clickhouse | 高性能、黑底、电光黄、数据库、硬核 | 黑 / 电光黄 | dark, yellow, performance |
| mongodb | 深青绿 + 亮绿、数据库、文档双模式 | 深青 / 亮绿 | teal, green, dual-mode |
| claude | 温暖、奶油底、衬线标题、珊瑚色、人文 AI | 奶油 / 珊瑚 | warm, serif, editorial-AI |
| cohere | 企业 AI、白 + 深绿黑、矿物质感、圆角卡片 | 白/墨绿 / 绿 | enterprise-AI, mineral, calm |
| mistral.ai | 日落渐变、暖黄橙红、山景摄影、法式 | 暖奶油 / 橙红渐变 | sunset-gradient, warm, photo |
| minimax | AI、白底黑胶囊按钮、鲜艳渐变卡片 | 白 / 多彩渐变 | vibrant-gradient, bold |
| together.ai | AI 基础设施、黑白交替、橙品红渐变 | 近黑+白 / 三色渐变 | gradient, dark-bands |
| x.ai | 科技感、未来感、纯黑、白描边胶囊、冷峻 | 近黑 / 白 + 日落渐变 | futuristic, stark, dark |
| elevenlabs | 语音 AI、杂志感、柔和、粉彩氛围 | 米白 / 暖黑 | editorial, soft, pastel |
| runwayml | 电影感、暗黑、全幅影像、AI 视频 | 黑 / 白 | cinematic, dark, media |
| lovable | 温暖、羊皮纸奶油底、克制、友好 | 奶油 / 暖黑 | warm, parchment, friendly |
| nvidia | 硬核科技、工程文档感、黑白 + 荧光绿 | 白+黑 / NVIDIA 绿 | engineering, dense, green |
| **SaaS / 生产力** ||||
| notion | 插画丰富、深海军蓝、便签点、亲和 | 白+深蓝 / 多彩 | illustrative, friendly |
| figma | 黑白编辑框架 + 大块粉彩色块、创意 | 白 / 粉彩色块 | creative, pastel-blocks, bold |
| framer | 暗黑画板、白色大标题、设计工具、锐利 | 黑 / 亮蓝 | dark, designer, artboard |
| webflow | 黑白对比、五色点缀、专业建站 | 白+近黑 / 紫粉蓝 | contrast, chromatic-accents |
| miro | 金丝雀黄、粉彩、俏皮、协作白板 | 白 / 黄 | playful, pastel, collaborative |
| airtable | 编辑感、白底、珊瑚/墨绿/桃色大卡片 | 白 / 多色卡片 | editorial, signature-cards |
| clay | 黏土风、鲜艳单色卡片、热粉深青 | 白 / 多彩 | vibrant, claymation, playful |
| cal | 友好 SaaS、白底黑按钮、圆角、留白 | 白 / 黑 | friendly, clean, rounded |
| intercom | 编辑感、奶油白、橙色点缀、客服 | 奶油白 / 橙 | editorial, cream, orange |
| slack | 茄紫色、奶油薰衣草渐变、胶囊按钮 | 白 / 茄紫 | aubergine, friendly |
| superhuman | 高效、深靛蓝 + 紫天空、编辑感、高端 | 深靛蓝+白 / 紫 | premium, editorial-dark |
| zapier | 暖奶油、咖啡色字、橙色 CTA、自动化 | 暖奶油 / 橙 | warm, cream, orange |
| jobright | 活力薄荷绿、黑白、求职 AI | 白+黑 / 薄荷绿 | energetic, mint |
| **金融 / 加密** ||||
| stripe | 金融科技、精致、深海军蓝、靛紫、渐变网格 | 白 / 靛紫 + 渐变 | polished, fintech, mesh-gradient |
| coinbase | 机构级、白底、单一蓝、可信、克制 | 白 / 蓝 | trustworthy, institutional |
| binance | 交易所、黑底、标志黄、自信 | 近黑 / 黄 | dark, yellow, trading |
| kraken | 加密、白底、紫色、专业可信 | 白 / 紫 | purple, trustworthy |
| revolut | 高对比双模式、黑白、现代金融 | 黑+白 / 蓝 | high-contrast, modern-fintech |
| wise | 超粗黑体、荧光青柠、鼠尾草绿、跨境 | 白 / 青柠 | heavy-type, lime, bold |
| mercury | 深墨紫夜 + 浅色、靛蓝胶囊、高端金融 | 墨紫/白 / 靛蓝 | premium, night-violet |
| mastercard | 温暖杂志、石色奶油、信号橙 | 油灰奶油 / 橙 | warm, editorial, stone |
| nerdwallet | 深绿 + 薄荷阶梯、理财对比、信息密 | 白 / 深绿 | green, dense, comparison |
| 1win | 博彩、近黑、鲜绿 + 电蓝、高密度 | 近黑 / 绿+蓝 | casino, dense, vivid |
| **大厂 / 企业** ||||
| apple | 高级感、摄影优先、博物馆画廊、极简、明暗交替 | 白/黑 / 蓝 | premium, photography, minimal |
| ibm | 企业、Carbon、方角扁平、IBM 蓝、严谨 | 白 / IBM 蓝 | enterprise, flat-square, rigorous |
| meta | 硬件电商、白底、全幅产品摄影 | 白 / 蓝 | product-merch, photo |
| oracle | 企业、暖灰阶、炭黑按钮、克制红 | 暖灰 / 炭黑 | enterprise, neutral, restrained |
| sap | 企业、白底、两灰一蓝、安静 | 白 / 蓝 | enterprise, quiet |
| hp | 企业消费、白纸、电光蓝、几何无衬线 | 白 / 电蓝 | clean, enterprise |
| dji | 产品展示厅、白底方格、工程蓝胶囊 | 白 / 蓝 | showroom, product-photo |
| uber | 黑白二重奏、几何无衬线、胶囊按钮 | 白+黑 / 黑 | monochrome, bold, pill |
| vodafone | 电信、全幅摄影、大写巨标题、红 | 白 / 红 | bold, uppercase, telecom |
| shopify | 电商、电影感黑底 + 白底双轨、商家摄影 | 黑+白 / 绿 | cinematic, commerce |
| spacex | 航天、纯黑、全幅火箭摄影、大写、未来感 | 黑 / 白 | aerospace, dark, cinematic |
| **消费 / 生活 / 媒体** ||||
| airbnb | 温暖、白底、珊瑚红、友好、消费 | 白 / 珊瑚红 | warm, friendly, consumer |
| spotify | 暗黑沉浸、内容优先、音乐、绿 | 近黑 / 绿 | dark, immersive, content-first |
| pinterest | 让位于图片、暖奶油、瀑布流、红 | 暖奶油 / 红 | image-first, warm |
| nike | 运动、全幅摄影、粗大写 Futura、冲击力 | 白/黑 / 黑 | athletic, bold, editorial |
| starbucks | 温暖零售、绿色、奶油、陶瓷白 | 暖奶油 / 绿 | warm, retail, green |
| oura | 健康、暖纸、衬线编辑、大地色 | 奶油 / 芥末、陶土 | wellness, earthy, serif |
| playstation | 游戏、全幅章节、黑白蓝、预告片感 | 黑/白 / PS 蓝 | gaming, cinematic, bold |
| theverge | 科技媒体、近黑、超粗标题、霓虹撞色、潮 | 近黑 / 荧光色 | loud, neon, editorial |
| wired | 科技杂志、黑白、窄高衬线、编辑严谨 | 白 / 黑 | editorial, serif, magazine |
| aljazeera | 硬新闻、白纸、密集标题、橙 + 红 | 白 / 橙 | news, dense |
| mydealz | 社区、高密度信息流、品牌绿 | 白 / 绿 | dense, community-feed |
| **汽车 / 奢侈** ||||
| tesla | 极简到只剩产品、全屏电影摄影、克制 | 白 / 蓝 | radical-minimal, cinematic |
| ferrari | 奢华、电影编辑感、近黑、红 | 近黑 / 法拉利红 | luxury, cinematic, dark |
| lamborghini | 纯黑大教堂、聚光灯、奢华、侵略性 | 纯黑 / 金 | luxury, pitch-black, dramatic |
| bugatti | 奢华、纯黑、字距大写、极度克制 | 黑 / 白 | austere-luxury |
| bmw | 企业汽车、奶油白、宝马蓝、稳重 | 奶油白 / 蓝 | corporate, measured |
| bmw-m | 赛车工程、近黑、粗大写、运动 | 近黑 / M 三色 | motorsport, dark, uppercase |
| renault | 高对比、黄黑、大胆 | 黑+白 / 黄 | high-contrast, bold |
| **复古** ||||
| dell-1996 | 90 年代门户、黑框、扁平色块、复古 | 黑框 / 多色块 | retro-90s, catalog |
| nintendo-2001 | 2000 年代金属面板、斜面、琥珀发光、Y2K | 长春花蓝 / 琥珀 | y2k, retro-chrome, skeuomorphic |

## 常见说法 → 首选

- **科技风 / 未来感**：linear.app、vercel、x.ai、raycast、nvidia（硬核）、voltagent（偏霓虹）
- **极简 / 干净**：vercel、apple、tesla、cal、ollama（极端）
- **高级感 / 奢华**：apple、bugatti、ferrari、lamborghini、superhuman、mercury
- **温暖 / 人文**：claude、cursor、lovable、zapier、airbnb、oura
- **杂志 / 编辑风**：wired、elevenlabs、intercom、mastercard、theverge（张扬版）
- **活泼 / 多彩**：figma、clay、miro、notion、posthog
- **金融 / 可信**：stripe、coinbase、wise、revolut、ibm
- **暗黑沉浸**：spotify、runwayml、sanity、linear.app
- **复古**：dell-1996、nintendo-2001

## 更新

运行 `bash scripts/update.sh`，从上游重新同步 `designs/`。上游有新增或删除的站点时，脚本会列出来，再手动更新上面的索引表。
