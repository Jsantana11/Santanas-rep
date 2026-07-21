---
description: Run the daily summary workflow manually (local mode, uses .env)
---

Run the daily summary workflow. Broker is Robinhood via mcp__Robinhood__*
tools (agentic account 504461419) — never use scripts/alpaca.sh. Google
Sheets (scripts/sheets.sh) is the source of truth; memory/TRADE-LOG.md is a
best-effort local mirror. Perplexity/ClickUp credentials come from .env.

DATE=$(date +%Y-%m-%d)

STEP 1 — Read tail of memory/TRADE-LOG.md (or bash scripts/sheets.sh read
TRADE-LOG) for yesterday's equity. Count today's trades and week's trades.

STEP 2 — Pull final state:
  mcp__Robinhood__get_portfolio (account: 504461419)
  mcp__Robinhood__get_equity_positions (account: 504461419)
  mcp__Robinhood__get_equity_orders (account: 504461419)

STEP 3 — Compute: Day P&L, phase P&L (vs $40 starting capital), trades
today, trades this week.

STEP 4 — Append EOD snapshot to memory/TRADE-LOG.md (and Google Sheets via
scripts/sheets.sh append TRADE-LOG if available).

STEP 5 — Send ONE ClickUp message (always, even no-trade days). <= 15 lines.
