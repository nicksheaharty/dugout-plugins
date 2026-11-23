# DugOut plugins

Search work that independent filmmakers, animators and storytellers have published on YouTube and Vimeo, from Claude, ChatGPT and Codex. Each result shows how closely the creator's work matches your search, a note citing the uploads that match, DugOut's ratings of that published work (IP, Audience, Story, Momentum), and a link to their DugOut profile. In apps that support MCP Apps (ChatGPT and Claude), results show as DugOut cards.

**About the creators.** DugOut profiles are built only from work creators have published publicly, and are visible only to signed-in DugOut customers. Creators can claim, correct or remove their profile at [creators.dugouttalent.com](https://creators.dugouttalent.com), or by request through the [privacy policy](https://dugouttalent.com/privacy).

Both plugins connect to the same server, `https://mcp.dugouttalent.com/mcp`. You sign in with your DugOut Google account the first time you use it. A DugOut team with an active plan or trial is required.

| Folder | For | Contents |
| --- | --- | --- |
| `plugins/claude` | Claude Code | `.claude-plugin/plugin.json`, `.mcp.json`, skills |
| `plugins/openai` | ChatGPT and Codex | `plugin.json` + `mcp.json` (portable Agent Plugin with OpenAI settings), `.codex-plugin/` for Codex, skills, icons |

## Tools

- `search_creators`: plain-English search over published work, for example "analog horror web series". Filters: archetype, Genres, platform, `open_to_work`, `verified`. `fast` skips the reasons.
- `get_creator`: one creator's profile, by DugOut id, @handle or name.

## Skills

- `find-creators` (Claude, ChatGPT, Codex): how to search published work and present results.
- `creator-shortlist` (ChatGPT and Codex only): turns a brief into a short memo of matching creators.

## Install

**Claude Code**

```
/plugin marketplace add nicksheaharty/dugout-plugins
/plugin install dugout@dugout-plugins
```

Then run `/mcp` and sign in to `dugout`. The skill appears as `/dugout:find-creators`.

**Claude (web and desktop)**

Settings › Connectors › Add custom connector, then paste `https://mcp.dugouttalent.com/mcp`.

**Codex**

```
codex plugin marketplace add nicksheaharty/dugout-plugins
codex plugin add dugout@dugout-plugins
```

**ChatGPT**

Build the upload with `scripts/package-openai.sh`, which writes `dist/dugout-openai.zip`, and upload it at platform.openai.com/plugins. For a private test, open chatgpt.com/plugins and choose + › Add custom MCP server with the URL above.

## Support

Questions or problems: https://dugouttalent.com/contact
