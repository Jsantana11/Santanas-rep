---
description: Run the midday scan workflow manually (local mode, uses .env)
---

Run the midday scan workflow. Credentials come from .env.

DATE=$(date +%Y-%m-%d)

STEP 1 — Read memory:
- memory/TRADING-STRATEGY.md (exit rules)
- tail of memory/TRADE-LOG.md
- today's memory/RESEARCH-LOG.md entry

STEP 2 — Pull current state:
  bash scripts/alpaca.sh positions
  bash scripts/alpaca.sh orders

STEP 3 — Cut losers (unrealized_plpc <= -0.07). Log exits.

STEP 4 — Tighten trailing stops on winners:
- Up >= +20% -> trail_percent: "5"
- Up >= +15% -> trail_percent: "7"
Never tighten within 3% of current price. Never move a stop down.

STEP 5 — Thesis check. Cut any position with a broken thesis.

STEP 6 — Optional intraday Perplexity research if needed.

STEP 7 — Notification: only if action was taken.
