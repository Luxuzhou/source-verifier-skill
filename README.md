# Source Verifier - 信源可靠性研判引擎

> 不是帮你搜信息，是帮你判断信息该信几分。

一个 Claude Code Skill，基于 NATO Admiralty Code 双维度评估体系，对任意信息进行多源采集、交叉验证和可解释的置信度评级。

## 一键安装

```bash
git clone https://github.com/Luxuzhou/source-verifier-skill.git ~/.claude/skills/source-verifier
```

或者用安装脚本（支持更新）：

```bash
curl -fsSL https://raw.githubusercontent.com/Luxuzhou/source-verifier-skill/master/install.sh | bash
```

装好后重启 Claude Code，输入 `/source-verifier` 即可使用。

## 快速上手

**验证一条声明：**
```
/source-verifier GPT-5 已经发布
```

**验证一篇文章：**
```
/source-verifier https://example.com/some-article
```

**对已有研究报告做信源核查：**
```
/source-verifier
> 请对刚才的研究报告做全面深度研判
```

## 它会做什么

1. **提取声明** — 从你的输入中拆解出可验证的原子声明
2. **多源采集** — 并行搜索正反两面的证据（WebSearch + DuckDuckGo + HN 等）
3. **交叉验证** — 检测信源独立性、矛盾点、沉默信号、时间线
4. **输出研判报告** — 每条声明给出 Admiralty Code 评级 + 完整推理链

## 评级体系

**来源可靠性（A-F）**

| 等级 | 含义 | 示例 |
|------|------|------|
| A | 完全可靠 | 当事方官方公告、原始研究论文 |
| B | 通常可靠 | Reuters、AP、顶级学术期刊 |
| C | 较为可靠 | 有编辑审核的行业媒体（36氪、InfoQ） |
| D | 通常不可靠 | 无审核的自媒体、匿名爆料 |
| E-F | 不可靠/无法判断 | 有虚假传播历史的来源、全新来源 |

**信息可信度（1-6）**

| 等级 | 含义 |
|------|------|
| 1 | 已确认（2+ 独立 A/B 级来源） |
| 2 | 很可能真实（1 个 A/B 来源，无矛盾） |
| 3 | 可能真实（C 级来源，符合背景） |
| 4 | 存疑（仅 D 级来源，或有矛盾） |
| 5-6 | 不太可能/无法判断 |

评级示例：`B-2` = 来源通常可靠 + 信息很可能真实。

## 环境要求

- Claude Code（CLI 或 Desktop）
- 不需要额外的 API key，Claude Code 内置的 WebSearch 就够用

**可选增强**（有则更好，没有也能跑）：
- `mcp__duckduckgo` — 多搜索引擎交叉验证
- `mcp__hacker-news` — 技术社区讨论信号
- `mcp__jina` — 备用内容提取

## License

MIT

---

Made by [陆徐洲](https://github.com/Luxuzhou) — 一家 LIMS 公司的 AI 算法负责人
