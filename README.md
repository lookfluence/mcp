# lookfluence MCP server

Ask your AI assistant about any public Instagram creator: analyze an account, compare two, find similar creators, search by hashtag. It reads public data only, and every key gets a free part each day.

Website: https://lookfluence.com/mcp

## Server URL

```
https://mcp.lookfluence.com/mcp
```

Paste this into your assistant's settings. It is a remote MCP server over HTTP. The page address (lookfluence.com/mcp) is a different thing and will not work as a server URL.

## What you can ask

- "Do an Instagram audit of @natgeo and tell me what to fix first." The reply is a report on the account, with weak spots ranked by what to change first.
- "Compare @nike and @adidas. Who has the more active audience?" The reply puts the two accounts side by side with a plain verdict.
- "Find creators like @minimalist_baker with 10k to 100k followers." The reply lists similar accounts with followers, engagement and a link to each report.
- "Find 20 hashtags for a vegan bakery in Berlin and show which ones are worth using." Hashtags come back grouped by how busy they are, ready to paste into a caption.
- "I sell running shoes. Research creators who might work with a brand like mine and save them to a list." A shortlist comes back with a line on why each one fits, saved to a list you can reopen.

## Free tools and connecting

Six tools work as soon as you add the URL: `get_profile_report`, `compare_profiles`, `profile_history`, `similar_profiles`, `niche_lists` and `creators_by_hashtag`. They read saved reports.

Connecting is free. It adds new analyses, live hashtag search, creator research, generators, recent followers export, saved lists and your account. In Claude, a tool that needs a connection shows a Connect card in the chat.

## Connect

### ChatGPT

1. On the web, open chatgpt.com/plugins and click the plus button.
2. Choose Add custom MCP server.
3. Name it lookfluence. Under Connection, paste the server URL.
4. Set authentication to OAuth, read the warning, and continue.
5. Create it, install it, and open it in a chat by typing @ and picking lookfluence.
6. The first time, ChatGPT sends you to lookfluence.com/connect. Check the app name and press Connect.

Menus move around and some plans do not offer custom servers. If the names differ, search ChatGPT's settings for "MCP" or "custom connector".

### Claude (web and desktop)

1. Open Customize, then Connectors.
2. Click Add, point at Custom and choose Web (some accounts show "Add custom connector").
3. Name it lookfluence, paste the server URL and save.
4. Click Connect on the new connector. Claude opens lookfluence.com/connect in your browser.
5. Check the app name and press Connect. You land back in Claude with the tools ready.

Custom connectors need a Claude plan that includes them. On work accounts an admin may have to allow them first.

### Claude Code

Create a personal token at https://lookfluence.com/mcp, then run:

```sh
claude mcp add --transport http lookfluence https://mcp.lookfluence.com/mcp --header "Authorization: Bearer <token>"
```

Type `/mcp` inside Claude Code to check that lookfluence shows as connected.

### Cursor

Create a personal token, then add this to `~/.cursor/mcp.json` (or `.cursor/mcp.json` in one project):

```json
{
  "mcpServers": {
    "lookfluence": {
      "url": "https://mcp.lookfluence.com/mcp",
      "headers": {
        "Authorization": "Bearer <token>"
      }
    }
  }
}
```

### VS Code

Add the server to `.vscode/mcp.json` in a workspace, or to your user `mcp.json`:

```json
{
  "servers": {
    "lookfluence": {
      "type": "http",
      "url": "https://mcp.lookfluence.com/mcp"
    }
  }
}
```

VS Code reads remote servers from a `servers` object with `type` and `url`, and accepts a `headers` object for a token. Format source: [VS Code MCP docs](https://code.visualstudio.com/docs/copilot/customization/mcp-servers), checked 2026-11-25.

### Other MCP clients

Any client that supports remote MCP servers over HTTP works the same way. Give it the server URL, then either let it open the connect page or pass a personal token in an `Authorization: Bearer <token>` header.

Copy-paste versions of these configs are in [`examples/`](examples/).

## Tools

Tools marked (free) work without connecting.

| Tool | What it does |
|---|---|
| `get_profile_report` (free) | Full saved report of one profile. |
| `compare_profiles` (free) | Two to five profiles side by side. |
| `profile_history` (free) | How a profile changed over time. |
| `similar_profiles` (free) | Creators that look like one you name. |
| `niche_lists` (free) | Ready-made lists of creators by niche. |
| `creators_by_hashtag` (free) | Saved creators who use given hashtags. |
| `analyze_profiles` | New analysis of up to 50 profiles. |
| `search_by_hashtags` | Live search by up to 5 hashtags. |
| `research_creators` | Describe your brand, get a shortlist. |
| `generate_hashtags` | Hashtags from a topic or a photo description. |
| `generate_usernames` | Username ideas for a new account. |
| `generate_bio` | Variants of an Instagram bio. |
| `generate_caption` | Caption variants for a photo. |
| `export_recent_followers` | The latest 200 followers or followings of a public account. |
| `save_list`, `add_to_list`, `remove_from_list`, `get_list`, `my_lists` | Keep lists of creators under your connection. |
| `get_account` | Your balance, what is left of today's free part, and prices. |
| `get_job` | Result of a run that was still going. |

## Pricing

Every key gets $1.00 of free use a day, reset at midnight UTC. Opening a saved report, a niche list or one of your lists is always free. Paid use beyond the free part is not open yet. Planned prices:

| Tool | Price |
|---|---|
| Profile analysis | $0.06 per new profile |
| Hashtag search | $0.05 per hashtag |
| Creator research by brief | $0.25 |
| Hashtag or username generator | $0.10 |
| Bio generator | $0.03 |
| Caption generator | $0.01 |
| Recent followers export | $0.10 |
| Saved reports, niche lists, saved lists | Free |

Your assistant checks with you before a paid run.

## Privacy

The server reads public Instagram profiles and posts. It cannot see private accounts or direct messages, and it does not post, send messages or read anyone's inbox. Your own Instagram account is never involved. lookfluence keeps your key, the reports and lists you create, and a log of which tools ran. Chat connections are tied to your key, and you can revoke any connected app on https://lookfluence.com/mcp. Details: [Privacy policy](https://lookfluence.com/privacy-policy) and [Terms of service](https://lookfluence.com/terms-of-service).

## Support

Use the contact form: https://lookfluence.com/contact

## License

MIT, see [LICENSE](LICENSE). This repository holds documentation and configuration examples only. The server runs as a hosted service.
