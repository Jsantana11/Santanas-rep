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

## Week ending 2026-07-24

### Stats
| Metric | Value |
|--------|-------|
| Starting portfolio | $49.30 (Mon 7/20 AM, pre-deposit) |
| Ending portfolio | $69.14 |
| Week return | +$19.84 (+40.2%) raw — contaminated by an unconfirmed ~$20 deposit (still not confirmed by user as of 7/24, 5th day flagged). Deposit-adjusted trading return: -$0.16 (-0.23%) |
| S&P 500 week | -0.005% (7412.32 → 7411.98, essentially flat) |
| Bot vs S&P | -0.22pp (trading-adjusted); raw comparison not meaningful due to deposit |
| Trades | 3 (W:0 / L:0 / open:2) — AMD buy, TSM buy, AMD add; account-block on trading resolved 7/20 after 12+ blocked trading days |
| Win rate | N/A — no closed trades this week |
| Best trade | N/A (no closes) — AMD unrealized -0.34% |
| Worst trade | N/A (no closes) — TSM unrealized -1.31% |
| Profit factor | N/A — no closed trades |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|
| — | — | — | — | No closed trades this week |

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |
|--------|-------|-------|------------|------|
| AMD | 523.81 (blended, incl. 7/21 add) | 522.03 | -0.34% | 483.51 |
| TSM | 408.98 | 403.63 | -1.31% | 380.34 |

### What Worked
- EQUITY_SUITABILITY account block finally cleared 7/20 after 12+ consecutive blocked trading days — bot re-verified via `review_equity_order` before firing and deployed same day.
- Both entries (AMD, TSM) and the AMD add cleared the 2-source catalyst bar cleanly — no hype-only trades.
- Add-to-winner rule applied correctly: fresh Microsoft Helios/Azure catalyst, position stayed under 20% cap, stop never moved down.
- No overtrading once the 3/week Tier-1 cap was hit — cash-deployment pressure did not cause a rule-breaking trade.

### What Didn't Work
- Both AMD (+3-5.6% premarket at various points) and TSM (+1.8-2.9%) gave back their gains into the Thursday tariff/AI-capex selloff, closing the week slightly red (-0.34% / -1.31%) — thesis intact, timing/entry gave back the edge.
- Cash sat 68-77% of equity most of the week (above the 25% threshold) with only 3 trade slots available — Tier-1's weekly cap is the binding constraint on the 75-85% deployment target, not a lack of ideas.
- AMD drifted over the 20% position cap mid-week (20.5-20.6%) purely from price appreciation — current rules don't say whether to trim a drift-only overage; left as-is, correctly not treated as a new buy.
- The ~$20 deposit ambiguity is now 5 trading days old with no user confirmation — Phase P&L baseline still can't be trusted.

### Key Lessons
- A multi-day account-level block (investor profile, equity suitability) can freeze the whole strategy for weeks regardless of catalyst quality — worth a standing pre-market check so it's caught fast.
- A clean, multi-source catalyst can still get run over by a macro/sector rotation (tariffs, AI-capex jitters) within days — don't over-credit entry quality for a short-term move against it.
- Add-to-winner rule is working as designed: catalyst-gated, cap-respecting, no drift into pyramiding on hype alone.

### Adjustments for Next Week
- Get user confirmation on the ~$20 deposit before next week's review — flag again if still unresolved.
- Week resets Monday 7/27 with 3 fresh trade slots — Energy (YTD sector leader) was flagged as the top research candidate given the persistent high cash%.
- No TRADING-STRATEGY.md rule change made this week — one week of data on 2 positions isn't enough signal to justify altering the 20%-drift or trade-cap rules yet; revisit if the pattern repeats.

### Overall Grade: B-
