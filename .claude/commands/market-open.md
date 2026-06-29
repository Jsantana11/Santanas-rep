---
description: Run the market-open execution workflow manually (local mode, uses .env)
---

Run the market-open execution workflow. Credentials come from .env.

DATE=$(date +%Y-%m-%d)

STEP 1 — Read memory for today's plan:
- memory/TRADING-STRATEGY.md
- TODAY's entry in memory/RESEARCH-LOG.md (if missing, run pre-market inline)
- tail of memory/TRADE-LOG.md (for weekly trade count)

STEP 2 — Re-validate with live data:
  bash scripts/alpaca.sh account
  bash scripts/alpaca.sh positions
  bash scripts/alpaca.sh quote <each planned ticker>

STEP 3 — Hard-check rules BEFORE every order. Skip and log if any fail.

STEP 4 — Execute approved buys (market orders, day TIF).

STEP 5 — Immediately place 10% trailing stop GTC for each new position.
Fallback ladder: trailing_stop -> fixed stop -> queue for tomorrow AM.

STEP 6 — Append each trade to memory/TRADE-LOG.md.

STEP 7 — Notification: only if a trade was placed.
