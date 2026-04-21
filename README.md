# claude-skills

A personal collection of [Claude Code](https://claude.com/claude-code) skills.

Skills extend Claude with specialized, invokable workflows — each one is a single Markdown file that Claude reads on demand to guide a specific kind of task.

## Installing

Clone the repo and run the install script. It symlinks every skill into `~/.claude/skills/`, so edits in the repo take effect immediately.

```sh
git clone https://github.com/<your-user>/claude-skills.git
cd claude-skills
./install.sh
```

Override the install location with `CLAUDE_SKILLS_DIR`:

```sh
CLAUDE_SKILLS_DIR=/custom/path ./install.sh
```

If a target already exists as a real file or directory (not a symlink), the installer moves it aside with a `.bak.<timestamp>` suffix before linking.

## Skills

| Skill | Purpose |
|---|---|
| [`end-session`](end-session/SKILL.md) | Wrap up a session: update docs, capture learnings, propose next work. |
| [`rubber-duck`](rubber-duck/SKILL.md) | Force a written explanation of the problem before proposing any fix. |
| [`structured-debugging`](structured-debugging/SKILL.md) | Walk reproduce → isolate → hypothesize → test → fix in order, with an artifact at each step. |

## Writing your own

Each skill is a single `SKILL.md` inside a directory named after the skill. The file starts with YAML frontmatter:

```yaml
---
name: skill-name
description: One-line description telling Claude when to use this skill
---
```

The `description` is what Claude reads to decide whether a skill applies — write it in terms of *when* to invoke, not *what it does*.

## License

[MIT](LICENSE)
