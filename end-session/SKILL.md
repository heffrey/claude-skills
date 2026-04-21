---
name: end-session
description: Use when wrapping up a coding session, closing out work, or about to step away from a task
---

# End Session Workflow

**Flexible.** Step 3 always applies; steps 1 and 2 are conditional — skip them if the session didn't produce anything worth capturing, or if the target file doesn't exist and creating one isn't warranted. Don't manufacture content to fill a section — say "nothing to add" and move on.

## When to use

- Wrapping up a coding session.
- About to step away from a task for a day or longer.
- After finishing a feature, fix, or investigation worth documenting.

## Step 1: Update CLAUDE.md with Session Learnings

Review what changed in the codebase during this session and add any new architectural insights, gotchas, or patterns to CLAUDE.md.

**What to capture:**
- New subsystems or modules added
- Changed behavior in existing systems
- Gotchas discovered (non-obvious constraints, performance traps, ordering requirements)
- New helper functions or patterns that future work should know about
- Configuration files or schemas introduced

**Examples to look for:**
- Code that surprised you or was trickier than expected
- Interdependencies you discovered between systems
- Performance considerations
- Edge cases that came up
- Data structures that need explanation

## Step 2: Update README.md with Relevant Documentation

Add or update user-facing or contributor-facing documentation in README.md.

**What to capture:**
- New user-visible features
- How to run or use the project
- Build/development instructions (if changed)
- Feature overview
- Known limitations or TODOs visible to users

## Step 3: Propose Logical TODOs

Based on the session's work and what you learned:

1. **Incomplete work** — features started but not finished
2. **Discovered issues** — bugs found but not fixed, or architectural problems identified
3. **Natural next steps** — obvious follow-up work that builds on what was done
4. **Technical debt** — refactorings that would make future work easier
5. **Performance** — optimizations that should be considered

Format as:
```
- [ ] Brief description (context about why it matters)
```

**Example:**
```
- [ ] Add retry logic to the upload client (currently fails silently on transient errors)
- [ ] Extract shared validation into a helper (duplicated across three handlers)
- [ ] Add index on the events table's created_at column (queries slow past ~100k rows)
```

