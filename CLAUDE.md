# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

A public collection of skills for Claude Code. No application source — each skill is a single Markdown file. The repo is consumed by users who clone it and run `./install.sh` to symlink skills into `~/.claude/skills/`.

## Repo layout

Every skill lives in its own top-level directory and contains exactly one file, `SKILL.md`:

```
<skill-name>/
  SKILL.md
```

The directory name must match the `name` field in the frontmatter. The installer (`install.sh`) discovers skills by iterating top-level directories that contain a `SKILL.md`, so adding a new one is purely a matter of creating the directory and file.

## Skill file format

Every `SKILL.md` starts with YAML frontmatter:

```yaml
---
name: skill-name
description: When Claude should invoke this skill
---
```

The `description` is the trigger — Claude sees it (not the body) when deciding whether a skill applies. Write it in terms of *when* a user or situation calls for the skill, with concrete trigger phrases. "Use when X happens" beats "A skill for X."

Don't tack on a workflow summary after the trigger. A description like "Use when X — walk through A, B, C" gives Claude a shortcut it will follow instead of reading the skill body; keep the description to triggering conditions only.

## Conventions

- **Rigid vs. flexible.** State explicitly whether the skill is a strict checklist ("do not skip steps") or a loose set of principles. Mark it with `**Rigid.**` or `**Flexible.**` on its own line at the top of the body, followed by a short clause explaining what that means for this skill. Ambiguity here causes misuse.
- **Keep skills short.** If a skill is longer than ~200 lines, it's probably two skills.
- **One skill per directory.** Don't add supporting files, examples, or references next to `SKILL.md` unless a skill genuinely needs them.
- **No external dependencies.** Skills should work out of the box — no scripts to run, no extra installs.
- **Generic examples only.** Skills live in a shared public collection — don't leave behind examples from whatever project the skill was born in (game mechanics, specific filenames, domain jargon). Use examples that could plausibly apply to any codebase.

## Adding a skill

1. Create `<skill-name>/SKILL.md` with the frontmatter above.
2. Add a row to the skills table in `README.md`.
3. (If the skill is already installed globally as a real directory) re-run `./install.sh` — it will back up the existing directory and replace it with a symlink.

## Install script

`install.sh` is idempotent. On re-run it refreshes existing symlinks. If it finds a real file/dir at a target path (e.g., a pre-existing hand-written skill), it moves that aside as `<name>.bak.<timestamp>` rather than deleting it. `CLAUDE_SKILLS_DIR` overrides the install destination.
