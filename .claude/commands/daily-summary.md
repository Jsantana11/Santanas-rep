---
description: Run the daily summary workflow manually (local mode, uses .env)
---

Run the daily summary workflow. Credentials come from .env.

DATE=$(date +%Y-%m-%d)

STEP 1 — Read tail of memory/TRADE-LOG.md for yesterday's equity.
Count today's trades and week's trades.

STEP 2 — Pull final state:
  bash scripts/alpaca.sh account
  bash scripts/alpaca.sh positions
  bash scripts/alpaca.sh orders

STEP 3 — Compute: Day P&L, phase P&L, trades today, trades this week.

STEP 4 — Append EOD snapshot to memory/TRADE-LOG.md.

STEP 5 — Send ONE ClickUp message (always, even no-trade days). <= 15 lines.
