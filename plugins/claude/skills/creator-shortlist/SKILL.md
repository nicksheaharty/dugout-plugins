---
name: creator-shortlist
description: Build a ranked shortlist of DugOut creators for a project brief, as a short memo a development team can share. Use when someone pastes a logline, brief or project description and wants candidates, a shortlist or a talent memo.
argument-hint: "[logline or project brief]"
---

# Creator shortlist from a brief

Turn a project brief into a shortlist memo backed by DugOut's search.

## Steps

1. **Read the brief.** Pull out the role needed (director, writer, animator, showrunner), the Genres, tone, comparables, format and budget. If the role is unclear, assume director and say so in the memo.
2. **Search two or three angles** with `search_creators`, without `fast`:
   - the brief as written ("director for a $10M folk horror feature about…")
   - the tone and craft ("slow-burn atmospheric horror with practical effects")
   - the comparables, if any ("someone like …")

   Add `open_to_work: true` if the brief asks for unsigned or available talent.
3. **Merge and rank.** Remove duplicates. Keep genuine fits ahead of stretches, then rank by fit. Take the top five; take fewer if fewer than five are genuine fits.
4. **Check each pick** with `get_creator` for their summary, best uploads and rep status.
5. **Write the memo** in this format:

```
Shortlist: <project>
<one line: what the search looked for>

1. <Name> (@handle) — Fit <n>, <genuine fit | stretch>
   Why: <one sentence citing a specific upload>
   Watch: <upload title + link>
   Scores: IP <n> · Audience <n> · Story <n> · Momentum <n> · <rep status>
   DugOut: <profile link>
…

Gaps: <what none of them cover, if anything>
```

Keep each entry to those lines. Don't invent anything the tools didn't return. If a search comes back empty or the trial has ended, say so and stop.
