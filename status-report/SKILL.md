---
name: status-report
description: Use when asked "what now", "what next", "what's next", "where are we", "what's left", "what's the state of things", or for a status report, progress update, or rundown of everything currently in flight
---

# Status Report

## Overview

A status report is **a table of progress bars, one row per task, followed by a closing section**. A scannable report, not a narrative — written in the reply, not published as a page.

## The session is the source of truth

The conversation supplies both the tasks and their state. Infer them from what was said and done here — including work offered and never answered, and work started then abandoned, which no external system records anywhere.

Git, CI, tickets and dashboards **corroborate; they never substitute.** A report assembled from PRs and branches describes what a scan could have found without you, and misses what only the session knows: what was decided and why, what was tried and dropped, what waits on an answer.

When an artifact and the session disagree, say so in State rather than siding with the artifact — "merged, but never verified in this session" is truer than either fact alone. And **corroborate only against what existed by the end of the session you are describing**: reporting on a past session, a PR merged afterwards is not corroboration but something that session could not have known.

## The report IS, in this order

### 1. One row per task

Every task in play gets a row — finished, in flight, blocked and deferred alike. Dropping the finished ones makes the report unreadable *as progress*.

| Task | Progress | State |
|---|---|---|
| Server-side signup telemetry | `████████████████████` 100% | merged [`699300d`](https://github.com/acme/widgets/commit/699300d93ac76b5cb766cdfe9860d51d63c47064) via [#45](https://github.com/acme/widgets/pull/45), verified in prod |
| `/api/version` staleness | `███████████████░░░░░` 75% | draft [#47](https://github.com/acme/widgets/pull/47), CI running |
| Delete stale remote branch | `░░░░░░░░░░░░░░░░░░░░` 0% | blocked: needs a human call |

Bar is 20 blocks, `█` filled and `░` empty, one block per 5%. Round the bar to the nearest block; the number beside it carries the precise figure — 34 of 120 is 28%, drawn as six blocks.

**What counts as a row.** A session never announces its task list; you infer it, and the same session can honestly decompose several ways. Use the level the person would recognise as something they asked for: steps toward one deliverable share a row, separate deliverables get their own. When splitting is ambiguous, ask whether each half carries its own evidence — split if each can be verified alone, merge if one cannot be checked without the other.

Work offered and never answered, or started and abandoned, is still a row; dropping it is how a report lies by omission. A problem mentioned once and never picked up is not a row until someone treats it as work. A bug you introduced and caught before it shipped belongs in its parent row's State, unless it had stakes of its own.

### Every reference is a link

Anything with a URL is a **markdown link**, everywhere it appears — PRs, issues, commits, tickets, docs, dashboards, papers, published pages. A bare `#46` is not clickable, and the reader's next move is to open it.

- `[#46](https://github.com/<owner>/<repo>/pull/46)` — issues use `/issues/46`
- ``[`699300d`](https://github.com/<owner>/<repo>/commit/<full-40-char-sha>)`` — short text, full sha in the URL

**Resolve the identifier, never guess it.** `gh repo view --json nameWithOwner -q .nameWithOwner` gives `owner/repo`. If you cannot resolve a URL, leave the reference bare and say so — a confidently wrong link is worse than none. Work with no URLs (a manuscript, a spreadsheet) has nothing to link; that is not a gap to fill.

### 2. Then the closing section

Include whichever apply:

- **Blocked on a person** → **Blocked on you**, naming what needs their judgment or their access. A mechanical errand ("merge this, it is already reviewed") is not a decision — mark it as such, or the list overstates the ask.
- **Incomplete but not blocked** → **Next up**: what you will pick up without being asked. Without it, unfinished rows read as stalled when nothing is stopping them.
- **Every task at 100%** → REQUIRED: a section headed **What's next**. Two questions shape it — think them through, don't print them.

  *Independence.* Two items are independent if neither needs the other's output and they would not edit the same files — the common case, not the rare one. Independent work **fans out**: scope each item tightly enough for its own subagent, and say plainly that they can run at once. Sequential work names the dependency that forces the order; if you cannot name one, it is not sequential — you picked the shorter thing to write.

  *Count.* Let the work set it, never a target: three items if there are three, eight if there are eight. **Never pad to reach a number.** An invented task is worse than a short list, and padding is where half-remembered lore leaks in as fact. If the honest list runs long, group related items or keep the most consequential — and say how many you set aside, because a silently truncated list reads as complete.

Every item is concrete and finishes. This section is held to the table's evidence standard: a step drawn from the session is a fact, one drawn from project docs or memory is a suggestion — say which, or leave the detail out.

A fully-green report always ends in this section. "Nothing left" is not an available ending.

## Assigning a percentage

**Use a real count when the task has one** — "11 of 18 papers extracted" is 61%, "28 of 40 outlets found" is 70%. A ratio is reproducible where a judgment call is not. Otherwise take the highest rung whose evidence has actually happened:

| Evidence | % |
|---|---|
| Not started | 0 |
| Scoped — "done" is defined | 25 |
| A first version exists end to end | 50 |
| Checked against its own quality bar | 75 |
| Handed to whoever accepts it | 90 |
| Accepted, in use, verified | 100 |

In software: code written 50, tests passing locally 75, PR open *and CI confirmed green* 90, merged and deployed and verified 100. **A PR opened but never checked is 75, not 90** — a rung is evidence you looked at, not a step you performed. Elsewhere the shape holds: draft, revised, sent for approval, approved and published.

Two common kinds of work don't fit that shape:

- **Work whose only deliverable is an answer** — an investigation, a recommendation, a question resolved. No approval step follows, so it reaches 100 when delivered and the person can act. Delivered-then-acted-on is still 100, not more.
- **A change made in a live system** — a flag, a setting, a dashboard. It reaches 100 when you have confirmed it took effect, not when you saved it. Saved but unverified is 75.

A task blocked on a human shows the percentage it actually reached, with `blocked:` in State — it cannot reach 100 on your own. If a state is genuinely unknown, write `?` and say so. Cite only identifiers, counts and dates you have actually seen.

## Concrete means concrete

Each item names the file, link, command, person or decision **and finishes** — something markable done in one sitting. An open-ended watch has no completion, so it cannot be a next step.

- Good: "Merge [#46](https://github.com/acme/widgets/pull/46) once `Test and build` is green, then confirm the new property on one real sign-in"
- Good: "Send the revised opening to the founder today and ask for a yes or no by Thursday"
- Good: "Re-run the ward query as an inner join; if those two wards still show zero, the join is not the cause"
- Bad: "Improve test coverage", "Follow up on the PR", "Keep making progress on chapter 3"
- Bad, and the tempting one: "Watch it for a day or two", "Spot-check the numbers on the next few runs", "Monitor the rollout"

Turn a watch into a check: name the query, the threshold, and what its answer decides.

## Common mistakes

| Mistake | Fix |
|---|---|
| Prose buckets ("Done / In flight") | Every task gets a bar and a number |
| Omitting completed tasks | They stay — 100% rows *are* the progress |
| Closing an all-green report with "no action items" | The all-100% branch is required |
| Ending with "want me to check?" | Deliver the report; offer nothing |
| Inventing shas or dates to look thorough | Cite only what you have seen; `?` otherwise |
| Bare `#46` instead of a link | Anything with a URL is a markdown link |
| Scoring a PR 90% without checking CI | Unchecked is 75 — rungs are evidence you looked at |
| Corroborating a past session against today's state | Time-box to that session's end |
| A sequential list with no dependency named | Name the dependency, or fan out |
| Padding the list to reach a count | Let the work set the count |
| Printing "Independence?" / "Count?" as headings | They shape your thinking, not the output |
