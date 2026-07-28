---
name: end-session
description: Use when wrapping up a coding session, closing out work, or about to step away from a task
---

# End Session Workflow

**Flexible.** Step 3 always applies; steps 1, 2, and 4 are conditional — skip them if the session didn't produce anything worth capturing, or if the target file doesn't exist and creating one isn't warranted. Don't manufacture content to fill a section — say "nothing to add" and move on.

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

**CLAUDE.md documents live constraints on future work, not session history.** This skill has a strong pull toward "incident lore" — writing up what broke, how it was found, and how it got fixed. Resist that pull. Before adding any gotcha, apply one test:

> **Does the triggering condition still exist?** If someone did the naive thing today, would it still break?

- **Trigger still live → keep it, stated as a plain constraint.** "Re-adding `itesi.de` to the cert's SAN list breaks auto-renewal again" is worth keeping forever — the redirect rule and the ACME-challenge collision that caused it are both still there. Write it as the current rule ("don't do X, because Y"), not as a story about when it broke.
- **Trigger structurally closed → don't add it, and don't leave it if you're editing a section that already has it.** A bug that a code change made permanently impossible has no bearing on anything anyone will do next. "We used to emit an empty `og:image` tag, now fixed" tells a future reader nothing they need to act on.
- **Never real to begin with → don't add it.** A suspected bug that turned out to be a false alarm (a stale log line, a confusing tool artifact, a misread diff) isn't a gotcha — it's a debugging dead end. If the resolution was "this was never actually broken," it doesn't belong here regardless of how much time it cost this session.

When an entry does pass the test, write it as state, not narrative: the current fact, plus — only if genuinely non-obvious — the one-line reason it's built that way. Skip the discovery story, skip "previously X happened," skip dates unless the date itself is load-bearing (a deadline, a version cutover). If you're about to write "we found," "this was caused by," or "used to," stop and rewrite as a plain statement of the present rule. The narrative already lives in the commit message — don't duplicate it here.

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

## Step 4: Propose Commit and Push

If uncommitted changes exist, offer to commit them with a summary message and push. This step is conditional — skip it if there's nothing to commit, if the user manages commits themselves, or if the changes aren't ready to ship.

Ask: "There are uncommitted changes — want me to commit and push?"

Don't commit silently. Always confirm before acting.

