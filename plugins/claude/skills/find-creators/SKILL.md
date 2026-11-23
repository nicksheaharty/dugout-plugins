---
name: find-creators
description: Find independent filmmakers, animators and storytellers on DugOut. Use when someone asks for creators, talent, directors, writers or channels for a project, a genre, a tone or "someone like" a known creator, or wants a DugOut creator's profile.
argument-hint: "[what you're looking for]"
---

# Find creators on DugOut

DugOut tracks independent creators on YouTube and Vimeo and scores each on **IP**, **Audience**, **Story** and **Momentum** (0–100). Two tools from the DugOut MCP server do the work:

- `search_creators`: plain-English search. Returns ranked creators, each with a fit score, a verdict (genuine fit, stretch, or named in the search), a one-line reason grounded in their uploads, example uploads, and a DugOut profile link.
- `get_creator`: one creator's full profile. Takes a DugOut id, an @handle or a name.

## How to search

1. Write the ask the way a development exec would say it, and keep the user's specifics: role, Genre, tone, budget, comparables, audience size. For example: "analog horror director with no rep for a $5M feature", or "animator like Kane Parsons for a limited series".
2. Use filters only when the user is explicit:
   - `open_to_work: true` for "no rep", "unsigned" or "available".
   - `verified: true` when they need someone they can contact.
   - `genres` for named Genres, `platform` for YouTube or Vimeo only.
   - `archetype` for Franchise starter (`franchise`), IP originator (`ip`), Storyteller (`story`), Audience builder (`audience`) or Rising (`rising`).
3. Set `fast: true` for a quick first pass or when the user is browsing. It skips the reasons. Run without it before recommending anyone.
4. If the results look thin, search again with a broader phrasing rather than stacking filters.

## How to answer

- Where the app shows DugOut cards, don't restate every card. Name the top two or three picks and say in a sentence why each fits, citing the upload that shows it.
- Where there are no cards, give a short ranked list: name and handle, fit, the reason, and the DugOut profile link.
- Call stretches stretches. Never present a stretch as a genuine fit.
- When the response says more results are on DugOut Pro, say so once, plainly.
- Use "Genre", never "niche". Link to DugOut profiles, not just the platform channel.
- For "tell me more" about one person, call `get_creator` and summarise: what they make, their strongest uploads, their scores, and their rep status.

## Limits

Each person gets 200 searches a day from connected apps. If a tool says the team's trial has ended, pass the message on and stop.
