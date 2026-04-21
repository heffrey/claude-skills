---
name: structured-debugging
description: Use when facing a bug, test failure, or unexpected behavior and you're tempted to guess at a fix
---

# Structured Debugging

**Rigid.** Do the steps in order; do not skip.

Skip steps and you will waste time chasing ghosts. The point of this skill is to produce a concrete artifact at each stage so you always know what's been verified and what's still a guess.

## The five steps

Do them in order. Do not skip.

### 1. Reproduce

Find the shortest sequence of actions that reliably reproduces the bug. If you can't reproduce it on demand, you can't fix it — you can only guess.

**Artifact:** a command, test case, or sequence of steps that triggers the bug 100% of the time. Write it down.

**If the bug is a failing test:** run it in isolation first (e.g., `jest --testPathPattern=foo --runInBand`). If it passes alone but fails in the full suite, the bug is shared mutable state — not a logic error or race condition in the code under test. That changes the entire investigation.

**If the bug is intermittent:** reproduce with logging turned up, and treat capturing a single clean instance (with logs) as the success criterion for this step.

### 2. Isolate

Narrow the reproduction to the smallest possible scope. Remove unrelated config, unrelated inputs, unrelated code paths, unrelated dependencies. `git bisect` is often the right tool here.

**Artifact:** a minimal reproducer — ideally a single function call or a failing unit test — plus the specific commit, file, or subsystem responsible.

### 3. Hypothesize

State what you believe is wrong in a single sentence: "The bug is X, caused by Y." If you have multiple theories, list them and rank by likelihood.

**Artifact:** a written hypothesis. Without one, the next step has no target.

### 4. Test the hypothesis

Design an experiment that would confirm or deny the hypothesis. Add a log line, add an assertion, step through in a debugger, print a variable. The test must be able to **disprove** the theory — "everything still looks fine" is not a result.

**Artifact:** observed evidence that either confirms the hypothesis or rules it out. If ruled out, return to step 3 with what you learned.

### 5. Fix and verify

Make the change. Re-run the reproducer from step 1. Confirm the bug is gone. Then re-run the full test suite to confirm you didn't break something else.

**Artifact:** a passing test (new or existing) that would have caught this bug. If no test catches it, the bug will regress.

## Anti-patterns

- **Fixing before isolating.** You may patch a symptom and leave the root cause in place.
- **Shotgun changes.** Changing five things at once; if the bug goes away, you don't know which fix worked.
- **Trusting "should work."** If you can't explain why your fix works, you got lucky, not correct.
- **Skipping the regression test.** The fix isn't real until something would catch it coming back.
