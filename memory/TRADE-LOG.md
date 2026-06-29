# Trade Log

## Day 0 — EOD Snapshot (pre-launch baseline)
**Portfolio:** $10,000.00 | **Cash:** $10,000.00 (100%) | **Day P&L:** $0 | **Phase P&L:** $0

No positions yet. Bot launches tomorrow.

---

## 2026-06-29 — Open Positions

**Portfolio:** $50.01 | **Equity:** $8.01 | **Cash:** $42.00 | **Deployed:** 16%

| Symbol | Qty | Entry | Current | P&L% | Stop | Notes |
|--------|-----|-------|---------|------|------|-------|
| GE | 0.021447 | $373.00 | $373.27 | +0.07% | NONE | Fractional shares: Robinhood blocks stop orders on fractional qty. No downside protection. |

**Platform constraint discovered:** Robinhood rejects stop_market (and stop_limit) orders on fractional share quantities — both GFD and GTC. Stop fallback ladder exhausted. Position unprotected.

**Action required:** Consider selling GE fractional and re-entering as whole share (needs ~$373 — exceeds current cash) OR accept unprotected risk on $8 position and monitor manually each session.
