<div align="center">

# 🛡️ Source Verifier

### 信源可靠性研判引擎

**基于 NATO Admiralty Code 双维度评估体系的信息可信度验证工具**

<br/>

[![Claude Code Skill](https://img.shields.io/badge/Claude_Code-Skill-D97757?style=for-the-badge&logo=claude&logoColor=white)](https://github.com/Luxuzhou/source-verifier-skill)
[![NATO Admiralty Code](https://img.shields.io/badge/NATO-Admiralty_Code-003366?style=for-the-badge&logoColor=white)](https://en.wikipedia.org/wiki/Admiralty_code)
[![License: MIT](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](./LICENSE)

[![macOS](https://img.shields.io/badge/macOS-supported-000000?style=flat-square&logo=apple&logoColor=white)]()
[![Linux](https://img.shields.io/badge/Linux-supported-FCC624?style=flat-square&logo=linux&logoColor=black)]()
[![Windows](https://img.shields.io/badge/Windows-supported-0078D6?style=flat-square&logo=windows&logoColor=white)]()

<br/>

*不是"帮你做研究"，而是"帮你判断信息该信几分"*

[![GitHub stars](https://img.shields.io/github/stars/Luxuzhou/source-verifier-skill?style=social)](https://github.com/Luxuzhou/source-verifier-skill/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/Luxuzhou/source-verifier-skill?style=social)](https://github.com/Luxuzhou/source-verifier-skill/network)

</div>

---

## ✨ 核心能力

| 能力 | 说明 |
|------|------|
| **声明提取** | 从输入中拆解出可验证的原子声明 |
| **正反搜索** | 并行搜索支持和反对的证据 |
| **信源独立性检查** | 5 个来源引用同 1 个原始来源 = 实际只有 1 个 |
| **矛盾检测** | 自动发现不同来源间的关键分歧 |
| **沉默信号分析** | "该报道却没报道"本身就是信号 |
| **Admiralty 评级** | 双维度评分：来源可靠性 A-F × 信息可信度 1-6 |

## 🚀 安装

### Claude Code（推荐）

```bash
claude plugin marketplace add Luxuzhou/source-verifier-skill
claude plugin install source-verifier
```

更新：`claude plugin update source-verifier`

### Gemini CLI

```bash
gemini extensions install https://github.com/Luxuzhou/source-verifier-skill.git
```

### Git Clone（通用）

```bash
git clone https://github.com/Luxuzhou/source-verifier-skill.git ~/.claude/skills/source-verifier
```

> 纯文本 Skill，不依赖任何二进制或系统调用。核心就是一份结构化 prompt，任何能加载 System Prompt 的 AI Agent 都能用。

## 📖 快速上手

**验证一条声明：**
```
/source-verifier GPT-5 已经发布
```

**验证一篇文章：**
```
/source-verifier https://example.com/some-article
```

**对研究报告做信源核查：**
```
/source-verifier
> 请对刚才的研究报告做全面深度研判
```

## 📊 评级体系

### 来源可靠性（A-F）

| 等级 | 含义 | 示例 |
|:---:|------|------|
| **A** | 完全可靠 | 当事方官方公告、原始研究论文 |
| **B** | 通常可靠 | Reuters、AP、顶级学术期刊 |
| **C** | 较为可靠 | 有编辑审核的行业媒体 |
| **D** | 通常不可靠 | 无审核的自媒体、匿名爆料 |
| **E-F** | 不可靠 | 已知虚假传播历史 / 无法判断 |

### 信息可信度（1-6）

| 等级 | 含义 | 判定条件 |
|:---:|------|---------|
| **1** | 已确认 | 2+ 独立 A/B 级来源确认 |
| **2** | 很可能真实 | 1 个 A/B 来源，无矛盾 |
| **3** | 可能真实 | C 级来源，符合背景 |
| **4** | 存疑 | 仅 D 级来源，或有矛盾 |
| **5-6** | 不太可能 / 无法判断 | 与已知事实矛盾 / 信息不足 |

> 评级示例：**B-2** = 来源通常可靠 + 信息很可能真实

## 🔧 环境要求

- 任何支持 Skill 的 AI Agent（Claude Code / Gemini CLI / Codex）
- **不需要额外的 API key**，Agent 内置的搜索工具就够用

**可选增强**（有则更好，没有也能跑）：
- DuckDuckGo MCP — 多引擎交叉验证
- Hacker News MCP — 技术社区信号
- Jina MCP — 备用内容提取
- `scrapling` — 智能网页提取（`pip install scrapling`）

## 🤝 参与贡献

刚发布的版本，可能还有边界情况没覆盖到。欢迎：

- 提 [Issue](https://github.com/Luxuzhou/source-verifier-skill/issues) 反馈 bug 或建议
- 扩充 Skill 内部的检索工具链（如 Tavily、Brave Search 等 MCP）
- Fork 后适配你自己的领域场景
- **觉得好用？请点个 ⭐ Star，对独立开发者真的很重要**

## 📄 License

[MIT](LICENSE)

---

<div align="center">

Made by [陆徐洲](https://github.com/Luxuzhou) · 一家 LIMS 公司的 AI 算法负责人

</div>
