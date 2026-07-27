# Trade Log

NOTE: Google Sheets (TRADE-LOG tab) is the live source of truth. This file
is a best-effort local mirror — git push is unreliable, so treat any gap
between this file and Sheets as expected; Sheets wins.

## Day 0 — EOD Snapshot (live baseline, Robinhood agentic account 504461419)
**Portfolio:** $40.00 | **Cash:** $40.00 (100%) | **Day P&L:** $0 | **Phase P&L:** $0

No positions yet. Bot launches with $40 starting capital on Robinhood.

## 2026-06-29 — GE buy
**Symbol:** GE | **Side:** buy | **Dollar Amount:** $8.00 | **Fill Price:** $372.9999 | **Quantity:** 0.021447 shares | **Placed by:** agentic

## 2026-07-27 — AMD sell (cut -7%)
**Symbol:** AMD | **Side:** sell | **Fill Price:** $481.02 | **Quantity:** 0.026250 shares | **P&L:** -$1.12 (-8.17%) | **Thesis:** cut at -7% per rule (live -8.17% vs avg cost 523.81, breach confirmed intraday) | **Placed by:** agentic

## 2026-07-27 — EOD Snapshot
**Portfolio:** $68.15 | **Cash:** $21.18 (31.1%) | **Day P&L:** -$1.00 (-1.45%) | **Phase P&L:** +$28.15 (+70.4%, baseline $40 — unconfirmed ~$20 deposit caveat still open)

Trades today: 4 (AMD sell cut -7%, GM buy $13, RKLB buy $13, MMM buy $13). Trades this week: 3/3 buys (cap reached). Open positions: TSM (-2.4%, stop 380.34), GM (+1.5%, stop 79.74), RKLB (+0.1%, stop 62.21), MMM (+0.5%, stop 164.92). No broker-side GTC stops — fractional shares at Capital Tier 1 use scheduled -7% checks instead.
