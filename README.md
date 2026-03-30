# Source Verifier - 信源可靠性研判引擎

A Claude Code Skill for verifying information credibility using the NATO Admiralty Code framework.

## What It Does

Source Verifier is not a research tool — it's a **credibility assessment engine**. It takes claims, statements, or articles and evaluates how much you should trust them.

Core capabilities:
- **Claim extraction**: Breaks down complex statements into verifiable atomic claims
- **Multi-source collection**: Searches across multiple engines for both supporting and contradicting evidence
- **Cross-verification**: Detects source dependency chains, contradictions, and silence signals
- **NATO Admiralty Code rating**: Dual-axis assessment (Source Reliability A-F + Information Credibility 1-6)
- **Explainable reasoning**: Every rating comes with a full reasoning chain tagged as [Fact], [Opinion], or [Inference]

## Installation

### Claude Code

```bash
git clone https://github.com/Luxuzhou/source-verifier-skill.git ~/.claude/skills/source-verifier
```

## Usage

In Claude Code, type:

```
/source-verifier OpenAI released GPT-5
```

Or verify a URL:

```
/source-verifier https://example.com/some-article
```

### Verification Depth

| Depth | Queries | Min Sources | Use Case |
|-------|---------|-------------|----------|
| Quick check | 2-3 | 3 | Simple facts (release dates, version numbers) |
| Standard | 5-8 | 5 | News and statement verification |
| Deep assessment | 10-15 | 8 | Controversial topics, decision-critical claims |

## Rating System

**Source Reliability (A-F)**:
- A: Completely reliable (primary sources, official announcements)
- B: Usually reliable (Reuters, AP, top journals)
- C: Fairly reliable (industry media with editorial review)
- D-F: Unreliable to cannot be judged

**Information Credibility (1-6)**:
- 1: Confirmed (2+ independent A/B sources)
- 2: Probably true (1 A/B source, no contradictions)
- 3-6: Possibly true to cannot be judged

A rating of B-2 means "source usually reliable, information probably true".

## Requirements

- Claude Code (CLI or Desktop)
- Optional MCP servers: duckduckgo, hacker-news, jina (improve coverage but not required)

## License

MIT
