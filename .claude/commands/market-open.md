---
description: Run the market-open execution workflow manually (local mode, uses .env)
---

Run the market-open execution workflow. Broker is Robinhood via
mcp__Robinhood__* tools (agentic account 504461419) — never use
scripts/alpaca.sh. Perplexity/ClickUp credentials come from .env.

DATE=$(date +%Y-%m-%d)

STEP 1 — Read memory for today's plan:
- memory/TRADING-STRATEGY.md (incl. Capital Tiers for position sizing)
- TODAY's entry in memory/RESEARCH-LOG.md (if missing, run pre-market inline)
- tail of memory/TRADE-LOG.md (for weekly trade count)

STEP 2 — Re-validate with live data:
  mcp__Robinhood__get_portfolio (account: 504461419)
  mcp__Robinhood__get_equity_positions (account: 504461419)
  mcp__Robinhood__get_equity_quotes (symbols: [each planned ticker])

STEP 3 — Hard-check rules BEFORE every order. Skip and log if any fail.

STEP 4 — Review then execute approved buys:
  mcp__Robinhood__review_equity_order, then
  mcp__Robinhood__place_equity_order (side: "buy", type: "market",
    dollar_amount or whole-share quantity per Capital Tier, time_in_force: "gfd")

STEP 5 — Robinhood does NOT support stop orders on fractional shares — do
not attempt one. For whole-share fills (Capital Tier 2+), place a real 10%
GTC trailing stop. Otherwise log stop level (entry * 0.90) in TRADE-LOG;
scheduled -7% checks are the stop mechanism.

STEP 6 — Append each trade to memory/TRADE-LOG.md.

STEP 7 — Notification: only if a trade was placed.
