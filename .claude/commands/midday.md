---
description: Run the midday scan workflow manually (local mode, uses .env)
---

Run the midday scan workflow. Broker is Robinhood via mcp__Robinhood__*
tools (agentic account 504461419) — never use scripts/alpaca.sh. Perplexity
credentials come from .env.

DATE=$(date +%Y-%m-%d)

STEP 1 — Read memory:
- memory/TRADING-STRATEGY.md (exit rules)
- tail of memory/TRADE-LOG.md
- today's memory/RESEARCH-LOG.md entry

STEP 2 — Pull current state:
  mcp__Robinhood__get_equity_positions (account: 504461419)
  mcp__Robinhood__get_equity_orders (account: 504461419)
  mcp__Robinhood__get_equity_quotes (symbols: [all held tickers])

STEP 3 — Cut losers immediately (unrealized loss <= -7%). This is the ONLY
stop mechanism for fractional positions (Robinhood doesn't support stop
orders on them):
  mcp__Robinhood__place_equity_order (side: "sell", type: "market",
    quantity: "all shares", time_in_force: "gfd")
  Cancel any existing stop order via mcp__Robinhood__cancel_equity_order.
  Log exits to memory/TRADE-LOG.md.

STEP 4 — Tighten stops on winners (whole-share positions with a real GTC
stop only):
- Up >= +20% -> new stop at entry * 0.95
- Up >= +15% -> new stop at entry * 0.93
Never tighten within 3% of current price. Never move a stop down.

STEP 5 — Thesis check. Cut any position with a broken thesis.

STEP 6 — Optional intraday Perplexity research if needed.

STEP 7 — Notification: only if action was taken.
