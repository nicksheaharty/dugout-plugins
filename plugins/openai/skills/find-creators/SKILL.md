---
name: find-creators
description: Find work by independent filmmakers, animators and storytellers on DugOut. Use when someone asks for films, series, channels or creators in a genre, a tone, a format or "like" a known creator's work, or wants a DugOut creator's profile.
argument-hint: "[the kind of work you're looking for]"
---

# Find work on DugOut

DugOut indexes work that independent creators have published publicly on YouTube and Vimeo, and rates that published work on **IP**, **Audience**, **Story** and **Momentum** (0–100). The ratings describe the work and its public reach, not the person. Two tools from the DugOut MCP server do the work:

- `search_creators`: plain-English search over published work. Returns the creators whose work matches, most relevant first, each with how closely the work matches (a close match, a looser one, or named in the search), a one-line note citing the uploads that match, example uploads, and a DugOut profile link.
- `get_creator`: one creator's profile, built from their public uploads. Takes a DugOut id, an @handle or a name.

## How to search

1. Describe the work, and keep the user's specifics: Genre, tone, format, comparables, audience size. For example: "analog horror web series with found-footage style", or "animated work like Kane Parsons'".
2. Use filters only when the user is explicit:
   - `open_to_work: true` when they only want creators with no public rep or deal.
   - `verified: true` for creators who have claimed their DugOut page (they've chosen to be contactable).
   - `genres` for named Genres, `platform` for YouTube or Vimeo only.
   - `archetype` for the kind of work: Franchise starter (`franchise`), IP originator (`ip`), Storyteller (`story`), Audience builder (`audience`) or Rising (`rising`).
3. Set `fast: true` for a quick first pass or when the user is browsing. It skips the notes.
4. If the results look thin, search again with a broader phrasing rather than stacking filters.

## How to answer

- Where the app shows DugOut cards, don't restate every card. Name the two or three most relevant creators and, in a sentence each, the upload that matches the search.
- Where there are no cards, give a short list: name and handle, the note, the upload to watch, and the DugOut profile link.
- Talk about the work. Say a looser match is a looser match. Don't present DugOut's ratings as a verdict on a person or as a recommendation to hire anyone; the user decides who to approach.
- When the response says more results are on DugOut Pro, say so once, plainly.
- Use "Genre", never "niche". Link to DugOut profiles, not just the platform channel.
- For "tell me more" about one creator, call `get_creator` and summarise what they make, their strongest uploads and the ratings of that work.

## About the creators

Profiles use only what creators have published publicly, and only signed-in DugOut customers see them. Creators can claim, correct or remove their profile at creators.dugouttalent.com or through dugouttalent.com/privacy. If someone asks how DugOut got a creator's information, say that.

## Limits

Each person gets 200 searches a day from connected apps. If a tool says the team's trial has ended, pass the message on and stop.
