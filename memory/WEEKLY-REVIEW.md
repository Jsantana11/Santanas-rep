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

## Week ending 2026-07-10

### Stats
| Metric | Value |
|--------|-------|
| Starting portfolio | $50.13 |
| Ending portfolio | $49.62 |
| Week return | -$0.51 (-1.02%) |
| S&P 500 week | +1.7% |
| Bot vs S&P | -2.72pp |
| Trades | 0 (W:0 / L:0 / open:1) |
| Win rate | N/A (no closed trades) |
| Best trade | N/A |
| Worst trade | N/A |
| Profit factor | N/A |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|
| — | — | — | — | No closed trades this week |

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |
|--------|-------|-------|------------|------|
| GE | $373.01 | ~$355.14 | -4.79% | None (fractional, no -7% trigger yet) |

### What Worked
- No -7% cut needed on GE despite the pullback — rule held, no premature exit.
- Consistent daily research kept 2 catalyst-backed ideas (TSM, AMD) queued and ready.
- WebSearch fallback covered research gaps cleanly all 7 days Perplexity 403'd.

### What Didn't Work
- Account-wide EQUITY_SUITABILITY block has frozen ALL trading since 2026-07-06 (5 consecutive trading days) — TSM and AMD buys never executed despite valid catalysts.
- Zero new trades this week purely due to the unresolved investor-profile requirement, not a research or strategy failure.
- GE (only position) drifted from +1.5% to -4.79% unrealized with no ability to add, trim, or rotate capital elsewhere.
- 84%+ cash sitting idle all week, breaching the 75-85% deployment target on the low end, entirely blocked by the account restriction.

### Key Lessons
- A broker-level compliance block can fully stall the strategy regardless of research quality — this is now the single binding constraint, not sector picks or catalyst sourcing.
- Perplexity API has been down 7 straight days; WebSearch fallback is reliable enough to keep as permanent primary until the key is fixed.

### Adjustments for Next Week
- User action required: complete the investor profile at https://applink.robinhood.com/investment_profile?account_number=504461419&context=second_trade to unblock TSM/AMD buys — this is the #1 priority, ahead of any new research.
- Re-test review_equity_order daily until the block clears; execute TSM/AMD immediately once unblocked if catalysts still hold.
- Investigate/replace the Perplexity API key.

### Overall Grade: D
Underperformance vs S&P (-2.72pp) driven entirely by an external account block, not bad trades — but a week of zero deployable capital on a live account is still a fail on the "aggressive deployment" mandate.
