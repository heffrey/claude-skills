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

**Vague attribution.** Name the source or delete the claim: experts argue, observers have cited, industry reports, researchers say, some critics, several publications, studies show. The tell is the bare plural noun, so it survives any verb — "studies put it at", "researchers who study X find", "data suggests", "reports indicate" are the same move. Also check for inflated counts ("multiple reviewers" for one review) and for statistics with a number but no source.

## Pass 2 — Sentence shapes

- **Participle tails.** A clause bolted on with `-ing` that asserts significance without evidence: "...*, highlighting its importance*", "*, ensuring a seamless experience*", "*, fostering community*". Cut the tail. If the claim matters, make it its own sentence with a fact in it.
- **Negative parallelism.** "Not only X but also Y", "It's not X, it's Y", "X rather than Y". Do not count them — apply the load-bearing test below.
- **Rule of three.** Triplets of adjectives or examples. Do not count them either.
- **The load-bearing test** (for both of the above). Frequency tells you nothing; these constructions appear at identical rates in great prose and in slop. Ask instead whether each element carries content the others don't. "of the people, by the people, for the people" survives, because the three prepositions make three distinct claims about power. "self-awareness, resilience, and personal growth" does not, because it is one idea wearing three hats. "The world will little note, nor long remember what we say here, but it can never forget what they did here" survives, because the contrast is the argument. "It's not just about tracking moods — it's about fostering genuine transformation" does not, because the second half names nothing. Cut the padding; leave the rhetoric alone.
- **Elegant variation.** Cycling synonyms for one thing across a paragraph to avoid repeating a word. Repeat the word. Repetition reads as confidence.
- **Uniform rhythm.** Slop is wall-to-wall medium sentences. Read the paragraph aloud. If every sentence is 15–25 words, break some to four and let one run long.

## Pass 3 — Structure

- **Outline-shaped conclusions.** "Despite its X, Y faces challenges..." closing on unearned optimism. Also headings like "Challenges and Future Outlook", "Legacy and Impact", "Overview", "In conclusion". Cut them. End on the last real point.
- **Summary that restates.** A final paragraph that recaps what the reader just read. Delete it.
- **Significance inflation.** "stands as a testament to", "marks a pivotal moment", "underscores the importance of". Delete, or replace with the fact that would prove it.
- **Notability recitation.** Mechanically listing outlets, awards, or credentials to establish credibility. Keep the one that matters to this reader.
- **Hedged non-claims.** "Efforts are ongoing to...", "continues to evolve", "remains an important consideration". Say what happened or say nothing.

## Pass 4 — Terse slop

Passes 1–3 are tuned for ornate slop: the Wikipedia-and-marketing register that pads. A house voice built on short sentences, no throat-clearing, and lead-with-the-point produces a different slop that scores zero on all three. It is plain-worded, confident, correctly rhythmic, and still empty. Check for it separately.

- **The clipped pronouncement.** A standalone short sentence that asserts significance and names nothing: "The order is the whole point." "That's the whole game." "That distinction matters." "And that's the difference." Same defect as significance inflation in Pass 3, but the ornate version announces itself with "stands as a testament to" while this one hides inside the target rhythm. Test: delete the sentence. If the paragraph loses no information, it was throat-clearing for the real line right after it. Cut it and let that line open.
- **Admission that admits nothing.** "It took me longer than I'd like to admit." "I'll be the first to admit." "Embarrassingly, I…" "If I'm being honest." These perform candor while withholding the fact that would make it candid. Supply the number, the year, the specific thing that broke — or cut. "It took four years and three dead projects" is a confession; "longer than I'd like to admit" is a pose.
- **The borrowed antithesis.** "Interviews tell you what people say they want; usage tells you what they do." "Culture eats strategy for breakfast." Stock comparisons from a field's canon, recited rather than reported. Two symptoms: the pairing predates the author, and the losing half is something the author never did. A writer who never ran a customer interview cannot have found their own method better than one. Replace with what they actually did.
- **The absent comparator.** Any "beats", "better than", "instead of" where the loser is generic and unnamed — "a stack of customer interviews", "most frameworks", "the traditional approach". Real comparisons name a specific alternative the writer weighed and rejected.
- **Aphorism stacking.** Epigram-shaped closers on every section, or two in a row. One earned line lands; four reads as generated cadence. Keep the best, cut the others.

Terse slop is hard to catch because each sentence sounds like good writing. Judge content, not sound: what does the reader know after this sentence that they didn't know before it?

## Pass 5 — Formatting

- Title Case In Headings when the surrounding style is sentence case.
- Bold applied to every keyword rather than to the one thing that matters.
- Bulleted lists of `**Term:** description` where a paragraph would do, especially when the source is prose.
- Lists where the items are not actually parallel or not actually separable.
- Small tables holding two or three facts that belong in a sentence.
- Emoji used as section decoration.
- Em dashes standing in where a comma, colon, or parenthesis is the ordinary choice. Judge the substitution, never the rate: the Gettysburg Address runs 2.5 em dashes per 100 words, roughly three times the density of typical generated marketing prose. Any frequency threshold you set will fire on the better writer.
- Curly quotes and apostrophes in a plaintext destination that uses straight ones elsewhere.
- Horizontal rules before every heading; heading levels that skip a step.
- Markdown syntax pasted where markdown does not render.

## Pass 6 — Chat residue

Delete on sight, in any draft meant for someone other than the requester: "Certainly!", "Of course!", "You're absolutely right!", "I hope this helps", "Let me know if...", "Would you like me to...", "Here's a more detailed breakdown", "Is there anything else". Also: unfilled placeholders and brackets, model artifacts (`contentReference`, `oaicite`, `[cite: 1]`), and knowledge-cutoff disclaimers.

## German (DE)

The passes above are English-specific. For German prose, substitute this vocabulary. Source: [Wikipedia:Anzeichen für KI-generierte Inhalte](https://de.wikipedia.org/wiki/Wikipedia:Anzeichen_für_KI-generierte_Inhalte).

**Werbesprache:** reiches kulturelles Erbe, reiche Geschichte, atemberaubend, beeindruckende natürliche Schönheit, bleibendes Vermächtnis, eingebettet, im Herzen von

**Hochfrequente KI-Wörter:** essenziell, vielfältig, facettenreich, nahtlos, maßgeschneidert, maßgeblich, wegweisend, ganzheitlich, im digitalen Zeitalter, in der heutigen Welt

**Bedeutungsbetonung:** dient als Zeugnis, spielt eine wichtige Rolle, unterstreicht seine Bedeutung, Wendepunkt, Schlüsselmoment, tief verwurzelt, unerschütterliche Hingabe

**Füllkonjunktionen (the strongest single tell):** darüber hinaus, zusätzlich, außerdem, ferner, zudem, andererseits

**Redaktionelle Einschübe:** es ist wichtig zu beachten/bemerken/bedenken, es ist bemerkenswert, keine Diskussion wäre vollständig ohne

**Schlussformeln:** zusammenfassend, abschließend, insgesamt, and a section headed **Fazit**. Also "Trotz seiner Erfolge…", "steht vor mehreren Herausforderungen", Vermächtnis, Zukunftsaussichten.

**Negative Parallelismen:** "nicht nur …, sondern auch", "es geht nicht nur um …, sondern"

**Trikolon:** "sowohl … als auch … und"

**Partizip-Anhängsel:** gewährleistend, hervorhebend, betonend, widerspiegelnd

**Vage Autoritäten:** Branchenberichte, Beobachter haben zitiert, einige Kritiker argumentieren, Studien zeigen

**Chat-Reste:** "Ich hoffe, das hilft", "Natürlich!", "Sicherlich!", "Möchten Sie …", "lassen Sie mich wissen", "hier ist ein", "Ich hoffe, diese Nachricht erreicht Sie wohlauf", "Stand meines letzten Wissensupdates"

Three German-specific mechanics with no English equivalent:

- **The dash is different.** German typography uses the Halbgeviertstrich `–` with spaces around it. An em dash `—` in German prose is an English import, so it is a tell in its own right rather than merely a frequency question.
- **The quotes are different.** German uses `„…"`. English-style `"…"` or straight quotes inside German prose is the tell — the inverse of the English rule, where curly quotes are the suspect ones.
- **Nominalstil.** LLM German inflates verbs into noun phrases: "die Durchführung der Überprüfung" for "überprüfen", "zur Verbesserung der Verständlichkeit" for "damit man es versteht". Convert back to verbs. (Not in the source list, but it is the most reliable German tell in practice.)

Also confirm the register matches the target text — `du` and `Sie` are not interchangeable, and LLM German defaults to `Sie`.

When a document exists in both languages, audit and fix them in the same pass. Correcting only one silently forks the two versions.

## Fixing

Most effective first:

1. **Cut.** Most flagged sentences carry no information. Deleting is the fix; rewording preserves the emptiness in fresh words.
2. **Replace abstraction with fact.** "boasts a vibrant community" becomes the number, the name, or the thing someone did.
3. **Restore plain verbs.** `is`, `has`, `does`, `makes`.
4. **Shorten.** Copy that survives cutting a third is almost always better.
5. **Reread aloud.** Anything you would not say out loud to the reader comes out.

## Do not overcorrect

These are signs, not proof. The target is prose that sounds like a person wrote it, which is a different thing from prose that has been scrubbed clean.

**Not every pass carries equal weight.** Run against the Gettysburg Address as a control, the vocabulary, structure, and copula-avoidance passes score it at zero while synthetic slop scores 16, 6, and 4 — clean separation. The em dash, rule-of-three, and negative-parallelism checks score the two texts identically. Rest the verdict on the first group. Treat the second group as something to examine, never as evidence.

- **Never claim text is AI-generated.** Correct the pattern; don't diagnose the author. Detection tools have high error rates, and humans distinguish AI text at roughly chance.
- **A single em dash or curly quote means nothing.** Word, macOS, and standard typography all produce them. These count only alongside other signs.
- **The user's voice is not a defect.** When editing something the user wrote, correct the tells and leave their phrasing, rhythm, and jokes intact. The edit should read like them on a good day, not like a house style.
- **Some flagged words are the right word.** "Robust" is correct about a system that tolerates failure. Justify and keep it.
- **Don't strip contrast to obey the rules.** Removing every "not X but Y" mechanically produces its own kind of flat, hedge-free mush.
- **A short declarative sentence is not a Pass 4 hit.** Terse voices are terse on purpose, and great terse prose is full of standalone lines — "Now we are engaged in a great civil war." The hit requires emptiness, not brevity: the sentence asserts that something is significant without saying what it is. Run the delete test before cutting anything, and if the paragraph gets worse, put it back.

## Output

**Fix it. Do not ask first, and do not hand the user a list of problems to approve.** The corrected prose is the deliverable; the audit is internal.

- Prose you wrote yourself: correct it before it reaches the user. They see only the clean version.
- A draft or file the user supplied: edit it in place and deliver the corrected text.

Then add a short note, three lines at most, limited to:

- Anything you cut that carried real information.
- Any flagged phrase you kept on purpose, and why.
- Any spot where the fix needs a fact only the user has ("this needs the actual number").

Do not produce a findings table, a severity ranking, a before/after of every change, or a verdict on how machine-written it was. Those are for the one case where the user explicitly asks you to review or check the writing without touching it.
