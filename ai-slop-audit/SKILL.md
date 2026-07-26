---
name: ai-slop-audit
description: Use when writing, revising, or about to deliver any prose a human will read — marketing copy, landing pages, store listings, emails, announcements, blog posts, social posts, docs and README prose, PR descriptions, release notes — or when asked to check whether a draft sounds AI-written
---

# AI Slop Audit

**Rigid.** Run every pass below before prose is delivered, and apply the corrections yourself instead of reporting them. The passes are not optional; the individual fixes are judgment calls.

Source: [Wikipedia:Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing).

Most of these tells share one cause: **the sentence has a shape but no content.** Abstraction is what gets written when there is no specific fact to write. So the fix is usually to supply the missing fact or cut the sentence, not to swap in a different adjective.

## When to use

- Before handing over any draft written for humans, including one you just wrote.
- When the user pastes their own draft and asks how it reads.
- When revising copy that already exists.

Skip for: code, code comments, commit messages, config, tests, log output, and internal notes to the user.

## Pass 1 — Vocabulary

Flag every hit. Each one needs a specific justification to survive.

**Puffery:** boasts a, vibrant, rich, profound, enhancing, showcasing, exemplifies, commitment to, natural beauty, nestled, in the heart of, groundbreaking, renowned, featuring, diverse array

**Statistically overused since 2022:** delve, crucial, intricate, intricacies, underscore, tapestry, testament, align with, enhance, foster, garner, bolster, interplay, landscape, meticulous, pivotal, robust, valuable, enduring, key, additionally, emphasizing, highlighting

**Same family, commonly seen (not on the source list):** seamless, leverage, realm, myriad, plethora, holistic, transformative, unlock, elevate, empower, journey, resonate, ever-evolving, navigate (figurative), at its core, in today's world

**Copula avoidance.** The word is `is`. Restore it when these are standing in: serves as, stands as, marks, functions as, operates as, represents, boasts, features, maintains, offers.

**Vague attribution.** Name the source or delete the claim: experts argue, observers have cited, industry reports, researchers say, some critics, several publications, studies show. Also check for inflated counts — "multiple reviewers" for one review.

## Pass 2 — Sentence shapes

- **Participle tails.** A clause bolted on with `-ing` that asserts significance without evidence: "...*, highlighting its importance*", "*, ensuring a seamless experience*", "*, fostering community*". Cut the tail. If the claim matters, make it its own sentence with a fact in it.
- **Negative parallelism.** "Not only X but also Y", "It's not X, it's Y", "X rather than Y". One may be deliberate emphasis. Two in a document is a tic. Rewrite as a plain assertion.
- **Rule of three.** Triplets of adjectives or examples used to fake completeness. Cut to the one that carries weight, or expand to a real, unequal list.
- **Elegant variation.** Cycling synonyms for one thing across a paragraph to avoid repeating a word. Repeat the word. Repetition reads as confidence.
- **Uniform rhythm.** Slop is wall-to-wall medium sentences. Read the paragraph aloud. If every sentence is 15–25 words, break some to four and let one run long.

## Pass 3 — Structure

- **Outline-shaped conclusions.** "Despite its X, Y faces challenges..." closing on unearned optimism. Also headings like "Challenges and Future Outlook", "Legacy and Impact", "Overview", "In conclusion". Cut them. End on the last real point.
- **Summary that restates.** A final paragraph that recaps what the reader just read. Delete it.
- **Significance inflation.** "stands as a testament to", "marks a pivotal moment", "underscores the importance of". Delete, or replace with the fact that would prove it.
- **Notability recitation.** Mechanically listing outlets, awards, or credentials to establish credibility. Keep the one that matters to this reader.
- **Hedged non-claims.** "Efforts are ongoing to...", "continues to evolve", "remains an important consideration". Say what happened or say nothing.

## Pass 4 — Formatting

- Title Case In Headings when the surrounding style is sentence case.
- Bold applied to every keyword rather than to the one thing that matters.
- Bulleted lists of `**Term:** description` where a paragraph would do, especially when the source is prose.
- Lists where the items are not actually parallel or not actually separable.
- Small tables holding two or three facts that belong in a sentence.
- Emoji used as section decoration.
- Em dashes at a rate above roughly one per few paragraphs, or standing in where a comma, colon, or parenthesis is the ordinary choice.
- Curly quotes and apostrophes in a plaintext destination that uses straight ones elsewhere.
- Horizontal rules before every heading; heading levels that skip a step.
- Markdown syntax pasted where markdown does not render.

## Pass 5 — Chat residue

Delete on sight, in any draft meant for someone other than the requester: "Certainly!", "Of course!", "You're absolutely right!", "I hope this helps", "Let me know if...", "Would you like me to...", "Here's a more detailed breakdown", "Is there anything else". Also: unfilled placeholders and brackets, model artifacts (`contentReference`, `oaicite`, `[cite: 1]`), and knowledge-cutoff disclaimers.

## Fixing

Ranked by how much each one buys:

1. **Cut.** Most flagged sentences carry no information. Deleting is the fix; rewording preserves the emptiness in fresh words.
2. **Replace abstraction with fact.** "boasts a vibrant community" becomes the number, the name, or the thing someone did.
3. **Restore plain verbs.** `is`, `has`, `does`, `makes`.
4. **Shorten.** Copy that survives cutting a third is almost always better.
5. **Reread aloud.** Anything you would not say out loud to the reader comes out.

## Do not overcorrect

These are signs, not proof. The target is prose that sounds like a person wrote it, which is a different thing from prose that has been scrubbed clean.

- **Never claim text is AI-generated.** Correct the pattern; don't diagnose the author. Detection tools have high error rates, and humans distinguish AI text at roughly chance.
- **A single em dash or curly quote means nothing.** Word, macOS, and standard typography all produce them. These count only alongside other signs.
- **The user's voice is not a defect.** When editing something the user wrote, correct the tells and leave their phrasing, rhythm, and jokes intact. The edit should read like them on a good day, not like a house style.
- **Some flagged words are the right word.** "Robust" is correct about a system that tolerates failure. Justify and keep it.
- **Don't strip contrast to obey the rules.** Removing every "not X but Y" mechanically produces its own kind of flat, hedge-free mush.

## Output

**Fix it. Do not ask first, and do not hand the user a list of problems to approve.** The corrected prose is the deliverable; the audit is internal.

- Prose you wrote yourself: correct it before it reaches the user. They see only the clean version.
- A draft or file the user supplied: edit it in place and deliver the corrected text.

Then add a short note, three lines at most, limited to:

- Anything you cut that carried real information.
- Any flagged phrase you kept on purpose, and why.
- Any spot where the fix needs a fact only the user has ("this needs the actual number").

Do not produce a findings table, a severity ranking, a before/after of every change, or a verdict on how machine-written it was. Those are for the one case where the user explicitly asks you to review or check the writing without touching it.
