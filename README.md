# DugOut plugins

Search DugOut's pool of independent filmmakers, animators and storytellers from Claude, ChatGPT and Codex. Each result shows a fit score, whether the creator is a genuine fit or a stretch, a reason grounded in their uploads, their IP, Audience, Story and Momentum scores, and a link to their DugOut profile. In apps that support MCP Apps (ChatGPT and Claude), results show as DugOut cards.

Both plugins connect to the same server, `https://mcp.dugouttalent.com/mcp`. You sign in with your DugOut Google account the first time you use it. A DugOut team with an active plan or trial is required.

| Folder | For | Contents |
| --- | --- | --- |
| `plugins/claude` | Claude Code | `.claude-plugin/plugin.json`, `.mcp.json`, skills |
| `plugins/openai` | ChatGPT and Codex | `plugin.json` + `mcp.json` (portable Agent Plugin with OpenAI settings), `.codex-plugin/` for Codex, skills, icons |

## Tools

- `search_creators`: plain-English search, for example "analog horror director with no rep". Filters: archetype, Genres, platform, `open_to_work`, `verified`. `fast` skips the reasons.
- `get_creator`: one creator's profile, by DugOut id, @handle or name.

## Skills

- `find-creators`: how to search and present results.
- `creator-shortlist`: turns a brief into a ranked shortlist memo.

## Install

**Claude Code**

```
/plugin marketplace add nicksheaharty/dugout-plugins
/plugin install dugout@dugout-plugins
```

Then run `/mcp` and sign in to `dugout`. Skills appear as `/dugout:find-creators` and `/dugout:creator-shortlist`.

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
