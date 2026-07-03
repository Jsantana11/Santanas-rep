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

## Week ending 2026-07-03

### Stats
| Metric | Value |
|--------|-------|
| Starting portfolio | $40.00 |
| Ending portfolio | $50.13 |
| Week return | +$10.13 (+25.32%) |
| S&P 500 week | +1.8% |
| Bot vs S&P | +23.52% |
| Trades | 1 (W:0 / L:0 / open:1) |
| Win rate | N/A (no closed trades) |
| Best trade | GE +1.2% (open, unrealized) |
| Worst trade | N/A (no closed trades) |
| Profit factor | N/A (no closed trades) |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|
| — | — | — | — | No trades closed this week |

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |
|--------|-------|-------|------------|------|
| GE | $373.01 | $377.49 | +1.2% (+$0.10) | Tier 1 fractional — no broker-side stop; -7% manual scheduled check is the stop mechanism |

### What Worked
- Bot launched cleanly on the Robinhood agentic account (504461419); first position (GE) tied to a real Industrials/Energy sector-momentum catalyst
- Research Standard held the line 3 straight days — HOLD issued whenever an idea didn't clear the 2-independent-source bar (AMD, LMT, CRM/SNOW, RIVN watchlisted, not bought)
- GE modestly green (+1.2%) since entry, no thesis-breaking news; 3 fresh analyst PT raises (Citi, Jefferies, Seaport) this week reinforced the thesis
- Correctly recognized the July 4th market holiday and did not force a trade on a no-session day

### What Didn't Work
- Perplexity API returned 403 two days running (07-02, 07-03) — research fell back to native WebSearch both times; degraded-but-functional
- Cash sat at ~84% of equity all week, well above the 25% deployment threshold — documented each day per the Buy-Side Gate, but worth watching if it persists into next week
- GE add-candidate (3 analyst PT raises, room under the 20% cap) was identified 07-03 but couldn't execute — market closed for the holiday

### Key Lessons
- At Tier 1 (<$150 equity) fractional shares have no broker-side stop by design — the scheduled -7% manual check IS the stop, so it cannot be skipped
- A Perplexity outage should prompt a credential-refresh check rather than just silently riding the WebSearch fallback, so research quality doesn't degrade unnoticed
- Account is tiny (started $40) — a +25% phase P&L off one $8 position is not statistically meaningful yet; don't over-read early variance as strategy validation

### Adjustments for Next Week
- Verify/refresh PERPLEXITY_API_KEY before Monday's pre-market run
- Re-check the GE add-candidate thesis (Citi/Jefferies/Seaport PT raises) at Monday 07-06 market open; add only if still under the 20% cap and no new -7% trigger
- Keep enforcing the Research Standard's 2-source bar on AMD/LMT/CRM/SNOW/RIVN before acting
- No TRADING-STRATEGY.md rule changes this week — Tier 1 rules are working as designed

### Overall Grade: B+
