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

## Week ending 2026-08-07

### Stats
| Metric | Value |
|--------|-------|
| Starting portfolio | $67.02 |
| Ending portfolio | $66.67 |
| Week return | -$0.35 (-0.52%) |
| S&P 500 week | +3.6% |
| Bot vs S&P | -4.12% |
| Trades | 4 (W:0 / L:1 / open:2) |
| Win rate | 0% |
| Best trade | F -7.04% |
| Worst trade | F -7.04% |
| Profit factor | 0.00 |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|
| F | 14.89 | 13.842 | -0.92 (-7.04%) | Cut at -7% rule; breached 8/6 EOD, executed at 8/7 market-open |

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |
|--------|-------|-------|------------|------|
| GM | 85.74 | 87.59 | +2.16% | 79.74 (ref only, fractional, no GTC) |
| MMM | 177.33 | 182.90 | +3.14% | 164.92 (ref only, fractional, no GTC) |
| BA | 238.51 | 234.41 | -1.72% | 221.81 (ref only, fractional, no GTC) |
| PFE | 25.44 | 26.74 | +5.11% | 23.66 (ref only, fractional, no GTC) |

### What Worked
- 3 of 4 open positions green: PFE +5.1% (Q2 beat, dividend hike), MMM +3.1%, GM +2.2% — all Q2-beat/guidance-raise/analyst-upgrade catalysts holding up
- -7% cut rule executed correctly and without hesitation on F once confirmed at market-open
- Hit 97.8% capital deployment by 8/5 (5/6 positions) — well inside the 75-85%+ target
- Trade cap (3/3) reached by Wednesday on genuinely catalyst-backed ideas (F, BA, PFE), not filler trades

### What Didn't Work
- F breached -7% at 8/6 EOD but wasn't cut until 8/7 market-open — ~18hr lag between breach and execution, the cost of relying on scheduled checks instead of a real GTC stop (Tier 1, fractional shares)
- Bot underperformed S&P 500 by 4.12pp this week (-0.52% vs +3.6%) — a broad, strong market week that a concentrated 4-5 stock book didn't capture
- BA sitting at -1.72% since 8/5 entry with no negative catalyst — just a laggard so far
- Weekly 3-trade cap forced VRT and GS (both with solid RR setups per 8/7 research) to be queued instead of executed
- Deposit-baseline ambiguity (~$20 unconfirmed deposit around 7/20) still open 2.5 weeks later, distorting Phase P&L%

### Key Lessons
- Fractional-share Tier 1 accounts carry real stop-execution lag risk — a breach can sit through a full overnight session before the next scheduled check catches it
- A single strong index week can outpace correct individual stock-picking at this account size — expect tracking error against S&P at 4-5 positions
- The 3-trades/week cap is now a binding constraint most weeks, not a backstop — good ideas are being deferred, not avoided

### Adjustments for Next Week
- Execute VRT and GS (queued 8/7) at market-open if catalysts and RR still hold
- No TRADING-STRATEGY.md rule changes this week — Tier 1 constraints are functioning as designed; equity still well under the $150 Tier 2 threshold
- Ask user to confirm the ~$20 deposit around 7/20 so Phase P&L baseline can be corrected

### Overall Grade: C
