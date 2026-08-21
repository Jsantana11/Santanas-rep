# Weekly Review

Friday reviews appended here.
Template for each entry:

## Week ending YYYY-MM-DD

### Stats
| Metric | Value |
|--------|-------|
| Starting portfolio | $X |
| Ending portfolio | $X |
| Week return | ±$X (±X%) |
| S&P 500 week | ±X% |
| Bot vs S&P | ±X% |
| Trades | N (W:X / L:Y / open:Z) |
| Win rate | X% |
| Best trade | SYM +X% |
| Worst trade | SYM -X% |
| Profit factor | X.XX |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |
|--------|-------|-------|------------|------|

### What Worked
- ...

### What Didn't Work
- ...

### Key Lessons
- ...

### Adjustments for Next Week
- ...

### Overall Grade: X

---

## Week ending 2026-08-21

**⚠️ PARTIAL REVIEW — Robinhood MCP unauthorized 5 consecutive trading days (8/18–8/21).**
No live portfolio/position/order data available for this run. Ending figures below are
ESTIMATED from external market quotes (WebSearch), not confirmed via broker. Last
Robinhood-confirmed state: 2026-08-17 market-open (equity $65.58, cash $0.55).

### Stats
| Metric | Value |
|--------|-------|
| Starting portfolio | ~$65.58 (Mon 8/17 AM, last confirmed) |
| Ending portfolio | ~$65.42 (est., Fri 8/21, via external quotes — NOT broker-confirmed) |
| Week return | ~-$0.16 (~-0.2%, estimate) |
| S&P 500 week | ~-1.9% (7785.76 → ~7641, sources partially conflicting) |
| Bot vs S&P | ~+1.7% (estimate) |
| Trades | 0 (W:0 / L:0 / open:5) — no buys/sells this week, cash ($0.55) not fundable |
| Win rate | N/A (no closed trades) |
| Best trade | N/A closed; best open mover PFE ~+9-10% unrealized (avg 25.44) |
| Worst trade | N/A closed; worst open mover BA ~-9.8% unrealized (avg 238.51) — **BREACHED -7% cut, unexecuted** |
| Profit factor | N/A (no closed trades) |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|
| — | — | — | — | None this week |

### Open Positions at Week End (estimated, not broker-confirmed)
| Ticker | Entry | Close (est.) | Unrealized | Stop |
|--------|-------|-------|------------|------|
| GM | 85.74 | ~84.96 | ~-0.9% | 79.74 |
| MMM | 177.33 | ~178.96 | ~+0.9% | 164.92 |
| BA | 238.51 | ~215.13 | **~-9.8% — BREACHED, needs immediate cut** | 221.81 |
| PFE | 25.44 | ~27.79 | ~+9.2% | 23.66 |
| ALC | 75.92 | ~72.49 | ~-4.5% | 70.61 |

### What Worked
- PFE and MMM theses (earnings beats/guidance raises) still holding up, both green.
- Cash discipline: no forced sub-RR trades taken just to deploy the $0.55 remaining cash.
- Relative performance vs. S&P 500 looks favorable this week (estimate) — index down more than the estimated portfolio move.

### What Didn't Work
- **Robinhood MCP connector has been unauthorized for 5 straight trading days (8/18–8/21).** This is the sole stop-loss mechanism at Capital Tier 1 (fractional shares, no broker-side GTC stops) — every scheduled check during this window was blocked, so no -7% cut checks ran.
- BA has breached the -7% cut rule by a wide margin (real-time quotes put it near -9.8% vs. avg cost) and the cut could not be executed because live account access was unavailable. This is a live rule violation caused entirely by the outage, not a strategy call.
- Zero trades this week — cash has been functionally zero (~0.8% of equity) since 8/12, so no new ideas were fundable regardless of catalyst quality.
- This is the first WEEKLY-REVIEW.md entry despite the bot trading since 2026-06-29 — weekly reviews were not being run/logged previously.

### Key Lessons
- A broker connector outage is a capital-at-risk event, not just a research inconvenience, when it's the only stop-loss mechanism in place (Tier 1, no broker-side stops). It needs the same urgency as a live -7% breach.
- External web quotes can serve as a stopgap to at least detect a breach (as done here) even when the trading MCP itself is unreachable — worth doing on every blocked check going forward, not just noting "blocked" and moving on.

### Adjustments for Next Week
- **User action required now:** reauthorize the Robinhood MCP connector so the BA cut (and any other pending checks) can actually execute.
- Once reauthorized, cut BA immediately at market on the next check — it is well past the -7% threshold and has been unprotected for a week.
- Re-verify GM/MMM/PFE/ALC against confirmed broker figures once access is restored (this review's figures are estimates only).
- Consider whether a scheduled routine should escalate (not just log to RESEARCH-LOG) after 2 consecutive blocked sessions, given Tier 1 has no other stop mechanism.

### Overall Grade: D
Market/relative performance was fine, but the core risk-control (-7% cut) failed to execute on a real breach for a week due to an access outage — a process failure that happened to not compound into a bigger loss only because the market didn't move further against BA.
