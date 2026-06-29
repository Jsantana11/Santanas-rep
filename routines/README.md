# Cloud Routine Prompts

Paste each file verbatim into its Claude Code cloud routine. Do not paraphrase.

| File | Cron (America/Chicago) | Description |
|------|------------------------|-------------|
| pre-market.md | `0 6 * * 1-5` | Research catalysts, write trade ideas |
| market-open.md | `30 8 * * 1-5` | Execute planned trades, set stops |
| midday.md | `0 12 * * 1-5` | Scan positions, cut losers, tighten stops |
| daily-summary.md | `0 15 * * 1-5` | EOD snapshot and ClickUp recap |
| weekly-review.md | `0 16 * * 5` | Friday performance review |

## Prerequisites
1. Install Claude GitHub App on this repo
2. Enable "Allow unrestricted branch pushes" in the routine environment
3. Set all env vars in the routine config (NOT in a .env file)
