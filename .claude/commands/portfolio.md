---
description: Read-only snapshot of account, positions, open orders, and stops
---

Print a clean ad-hoc snapshot. No state changes, no orders, no file writes.
Broker is Robinhood via mcp__Robinhood__* tools (agentic account 504461419)
— never use scripts/alpaca.sh.

1. mcp__Robinhood__get_portfolio (account: 504461419)
2. mcp__Robinhood__get_equity_positions (account: 504461419)
3. mcp__Robinhood__get_equity_orders (account: 504461419)

Format the output as a single concise summary:

Portfolio — <today's date>
Equity: $X | Cash: $X (X%)
Positions: N/6

Positions:
  SYM | Sh | Entry -> Now | Unrealized P&L | Stop

Open orders:
  TYPE | SYM | qty | trail/stop | order_id

No commentary unless something is broken (fractional position with no
scheduled -7% check possible, whole-share position without a stop, or a
stop below current price).
