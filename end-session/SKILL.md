---
name: end-session
description: Wrap up session by updating docs, capturing learnings, and proposing next work
---

# End Session Workflow

Use this skill when wrapping up a coding session. It ensures learnings are documented and next work is clear.

## Step 1: Update CLAUDE.md with Session Learnings

Review what changed in the codebase during this session and add any new architectural insights, gotchas, or patterns to CLAUDE.md.

**What to capture:**
- New subsystems added (e.g., ground digging, particle effects)
- Changed behavior in existing systems
- Gotchas discovered (e.g., coordinate system quirks, performance issues)
- New helper functions or patterns that future work should know about
- Configuration files introduced (e.g., `mobs-config.json`)

**Examples to look for:**
- Code that surprised you or was trickier than expected
- Interdependencies you discovered between systems
- Performance considerations
- Edge cases that came up
- Data structures that need explanation

## Step 2: Update README.md with Relevant Documentation

Add or update player-facing or contributor-facing documentation in README.md.

**What to capture:**
- New player-visible features (controls, mechanics, items)
- How to run the game
- Build/development instructions (if changed)
- Feature overview
- Any known limitations or TODOs visible to players

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
- [ ] Add sound effects for digging (would make mining feel less silent)
- [ ] Refactor mob spawning to use wave system (current random spawn feels chaotic)
- [ ] Optimize ground rendering for depths >50 (currently renders all 50 layers every frame)
```

