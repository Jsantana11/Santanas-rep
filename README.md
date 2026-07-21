# Trading Bot

Autonomous swing trading bot running on Claude Code cloud routines.
Trades stocks only on Robinhood (agentic account 504461419). No options,
ever.

## Quick Start

1. Copy `env.template` to `.env` and fill in credentials (Perplexity,
   ClickUp, Google Sheets — Robinhood is accessed via the connected MCP
   server, not an API key)
2. Open this repo in Claude Code
3. Run `/portfolio` to verify API connectivity

## Architecture

- **Claude is the bot** — each scheduled run is a fresh LLM invocation
- **Google Sheets is memory** — TRADE-LOG/RESEARCH-LOG tabs are the source
  of truth; `memory/*.md` is a best-effort local mirror (git push is
  unreliable)
- **Robinhood MCP + scripts are the only API path** — trade via
  `mcp__Robinhood__*` tools, research/notify via the wrapper scripts, never
  curl Perplexity/ClickUp directly, never use Alpaca

## Five Daily Workflows (America/Chicago)

| Routine | Cron | Action |
|---------|------|--------|
| Pre-market | `0 6 * * 1-5` | Research catalysts |
| Market-open | `30 8 * * 1-5` | Execute trades |
| Midday | `0 12 * * 1-5` | Manage positions |
| Daily summary | `0 15 * * 1-5` | EOD snapshot |
| Weekly review | `0 16 * * 5` | Performance grade |

## Cloud Routine Setup

See `routines/README.md` for setup instructions.
Credentials go in the routine's environment config — NOT in `.env`.

## Local Testing

```bash
cp env.template .env
# fill in credentials
# open in Claude Code and run /portfolio
```
