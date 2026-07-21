---
description: Run the Friday weekly review workflow manually (local mode, uses .env)
---

Run the weekly review workflow. Broker is Robinhood via mcp__Robinhood__*
tools (agentic account 504461419) — never use scripts/alpaca.sh. Perplexity/
ClickUp credentials come from .env.

DATE=$(date +%Y-%m-%d)

STEP 1 — Read all this week's TRADE-LOG and RESEARCH-LOG entries,
WEEKLY-REVIEW.md template, and TRADING-STRATEGY.md.

STEP 2 — Pull week-end state:
  mcp__Robinhood__get_portfolio (account: 504461419)
  mcp__Robinhood__get_equity_positions (account: 504461419)
  mcp__Robinhood__get_realized_pnl (account: 504461419)

STEP 3 — Compute week metrics including S&P 500 return via Perplexity.

STEP 4 — Append full review section to memory/WEEKLY-REVIEW.md.

STEP 5 — If a rule needs to change, also update memory/TRADING-STRATEGY.md.

STEP 6 — Send ONE ClickUp message with headline numbers.
