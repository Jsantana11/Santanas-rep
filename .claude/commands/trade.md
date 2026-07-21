---
description: Manual trade helper with strategy-rule validation. Usage — /trade SYMBOL SHARES buy|sell
---

Execute a manual trade with full rule validation. Refuse if any rule fails.
Broker is Robinhood via mcp__Robinhood__* tools (agentic account 504461419)
— never use scripts/alpaca.sh.

Args: SYMBOL SHARES SIDE (buy or sell). If missing, ask.

1. Pull state: mcp__Robinhood__get_portfolio, get_equity_positions,
   get_equity_quotes for SYMBOL (capture ask price P).
2. For BUY, validate against memory/TRADING-STRATEGY.md Buy-Side Gate:
   - Total positions after fill <= 6
   - Trades this week + 1 <= cap for current Capital Tier
   - SHARES * P <= 20% of live equity
   - SHARES * P <= available cash
   - Catalyst documented (ask for thesis if not in today's RESEARCH-LOG)
   If any fail, STOP and print the failed checks.
3. For SELL, confirm position exists with right qty. No other checks.
4. Print order details + validation results, ask "execute? (y/n)".
5. On confirm:
   mcp__Robinhood__review_equity_order, then mcp__Robinhood__place_equity_order
   (account: 504461419, symbol: SYM, side: "buy"|"sell", type: "market",
   time_in_force: "gfd")
6. For BUYs: Robinhood does NOT support stop orders on fractional shares.
   Place a real 10% GTC trailing stop only if a whole-share fill (Capital
   Tier 2+); otherwise log stop level (entry * 0.90) for scheduled checks.
7. Log to memory/TRADE-LOG.md with full thesis, entry, stop, target, R:R.
8. bash scripts/clickup.sh with trade details.
