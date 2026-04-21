---
name: rubber-duck
description: Use when stuck on a problem, about to make a non-trivial change, or noticing you're about to guess instead of reason
---

# Rubber Duck

**Rigid.** Do not skip sections; do not propose a solution until the written explanation is complete.

The act of explaining a problem aloud often surfaces the answer. Use this skill as a gate: you cannot propose a solution until you've written the explanation.

## When to use

- Stuck on a bug for more than a few minutes.
- A proposed fix "should work" but you can't articulate exactly why.
- Before a change that spans more than one file or subsystem.
- Whenever you notice you're about to guess.

## The duck

Answer each section in plain prose. Do not skip sections. Do not use bullet points — sentences force precision.

### 1. What is actually happening?

Describe the observed behavior in one paragraph. Not what you think is wrong — what the system actually does. Include specific inputs, specific outputs, and specific locations.

### 2. What did you expect to happen, and why?

One paragraph. What should happen, and what in the code or spec says so? If you can't point to a reason, the expectation itself may be wrong.

### 3. What do you know for certain?

List things you have directly verified (by reading the code, running a test, reading logs). Everything else is a guess. Label guesses clearly.

### 4. What are you assuming?

Every assumption is a potential bug. Write each one as "I am assuming X because Y." If Y is "it usually works that way," that's a weak reason — verify before proceeding.

### 5. What would falsify your current theory?

Describe the experiment that would disprove what you believe. If no such experiment exists, your theory is not testable and you don't really have one.

## Output

The output of this skill is NOT a fix. It is a written explanation that makes the bug obvious, makes the assumption set explicit, or makes the next experiment concrete. Only then do you touch code.

If after working through the duck you still don't see the problem, the answer is usually in section 4 — an assumption you didn't realize you were making.
