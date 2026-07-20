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
- Open positions: AMD -3.2% unrealized (avg $519.92, last $503.42, stop target $483.51 — **no GTC stop order placed**); TSM -1.6% unrealized (avg $408.98, last $402.54, stop target $380.34 — **no GTC stop order placed**)
- ⚠️ Day/Phase P&L baseline is last-known equity ($49.30, pre-open 2026-07-17 — no EOD logged 7/16 or 7/17). The ~$19.62 jump far exceeds the $16 deployed into today's two trades; likely an untracked deposit, unverified against a real EOD close.
- ⚠️ Rule violation: neither AMD nor TSM has a real GTC trailing-stop order on the books despite same-day fills (strategy requires one on every position).
