# Trade Log

NOTE: Google Sheets (TRADE-LOG tab) is the live source of truth. This file
is a best-effort local mirror — git push is unreliable, so treat any gap
between this file and Sheets as expected; Sheets wins.

## Day 0 — EOD Snapshot (live baseline, Robinhood agentic account 504461419)
**Portfolio:** $40.00 | **Cash:** $40.00 (100%) | **Day P&L:** $0 | **Phase P&L:** $0

No positions yet. Bot launches with $40 starting capital on Robinhood.

## 2026-06-29 — GE buy
**Symbol:** GE | **Side:** buy | **Dollar Amount:** $8.00 | **Fill Price:** $372.9999 | **Quantity:** 0.021447 shares | **Placed by:** agentic

## 2026-07-20 — EOD Snapshot
**Portfolio:** $68.92 | **Cash:** $53.30 (77.3%) | **Day P&L:** +$19.62 (+39.8%) | **Phase P&L:** +$28.92 (+72.3%)

- Trades today: 2 — AMD buy $8.00 @ $519.90, TSM buy $8.00 @ $408.96
- Trades this week: 2
- Open positions: AMD -3.2% unrealized (avg $519.92, last $503.42, stop target $483.51); TSM -1.6% unrealized (avg $408.98, last $402.54, stop target $380.34)
- CORRECTION (prior EOD note wrongly called this a rule violation): fractional-share positions at Capital Tier 1 (<$150 equity) cannot carry a real broker-side GTC stop on Robinhood — per TRADING-STRATEGY.md, the scheduled -7% check (market-open/midday/daily-summary) IS the designed stop mechanism at this tier. No action needed; not a bug.
- Day/Phase P&L baseline is last-known equity ($49.30, pre-open 2026-07-17 — no EOD logged 7/16 or 7/17). The $53.30 cash today vs. expected ~$33.30 ($49.30 - $16 deployed) is a clean +$20.00 gap — consistent with TRADING-STRATEGY.md's "~$50 deposits every 2 weeks" model, so likely a deposit landed, not a data error. Unconfirmed (no transfer/deposit tool available) — awaiting user confirmation of deposit amount.
- If the $20 deposit is confirmed: true trading Day P&L = 68.92 - 20.00 - 49.30 = **-$0.38 (-0.77%)**, consistent with both positions being red today. Cumulative Phase P&L should be tracked against total capital contributed (not a flat $40) going forward once deposit history is confirmed — the historical "equity - $40" Phase P&L figure likely overstates returns if earlier deposits also went untracked.
