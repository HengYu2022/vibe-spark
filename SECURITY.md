# Security Policy

## Reporting a Vulnerability

Vibe Spark executes bash commands (reading files, git operations) and writes to `~/.vibe-spark/`. If you discover a security vulnerability (path injection, data overwrite, etc.), **please do not open a public issue**.

Instead, email: **hengyulyc@gmail.com**

We will respond within 48 hours and work with you to resolve the issue before any public disclosure.

## Scope

- `SKILL.md` — all bash commands executed during the workflow
- `~/.vibe-spark/profile.jsonl` — user preference data
- `ideas/**/*.md` — inspiration library (read-only, no user input flows into these)
