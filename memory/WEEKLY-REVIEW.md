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

## Week ending 2026-07-17

### Stats
| Metric | Value |
|--------|-------|
| Starting portfolio | $49.66 |
| Ending portfolio | $49.30 |
| Week return | -$0.36 (-0.73%) |
| S&P 500 week | ~-1.5% (chip-sector selloff Fri) |
| Bot vs S&P | +0.77pp (outperformed) |
| Trades | 1 (W:0 / L:1 / open:0) |
| Win rate | 0% |
| Best trade | none (no winners this week) |
| Worst trade | GE -8.79% |
| Profit factor | 0.00 |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|
| GE | $373.01 (2026-06-29) | $340.24 (2026-07-16) | -$0.70 (-8.79%) | -7% cut rule breach confirmed at midday scan; premarket already -7.6%, execution lag pushed realized loss to -8.79% |

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |
|--------|-------|-------|------------|------|
| none | — | — | — | — |

### What Worked
- -7% cut discipline held: GE was flagged at premarket breach and closed same day per rule, no larger blowup despite having zero broker-side stop (fractional shares, Tier 1 limitation).
- Research quality held up despite Perplexity API returning 403 for a 12th+ consecutive day — WebSearch fallback kept surfacing multi-source catalysts (TSM/AMD) and correctly rejected weak single-source ideas (BLK/OKTA/PANW/CTAS) at week end.
- Bot beat the S&P 500 this week (-0.73% vs ~-1.5%) despite a losing trade, purely on smaller drawdown / avoided exposure.
- Being locked out of TSM/AMD all week inadvertently avoided Friday's broad chip-sector selloff (SOXX -3.7%, SK Hynix -11%) that would have hit a fresh position hard.

### What Didn't Work
- EQUITY_SUITABILITY / investor-profile block on account 504461419 has now persisted 13 consecutive trading days (since 2026-07-06), blocking 100% of new trades all week — the single dominant constraint on the strategy, not a research or discipline failure.
- Ended the week at 100% cash / 0 positions vs. the 75-85% deployment target — full deployment gap, entirely attributable to the account-level block.
- GE's only stop mechanism was the scheduled check; by the time the -7% breach was caught and executed, realized loss had slipped to -8.79% (1.79pp worse than the rule's target).
- Perplexity API key has been dead (403) for 12+ straight sessions — standing tooling gap, plugged only by manual WebSearch fallback.

### Key Lessons
- The single-position, no-stop, Tier 1 structure concentrates all risk in one name with a real gap between breach and execution — this week that gap cost ~1.8pp beyond the intended -7% cut.
- Good relative performance (beating the index) can coexist with a fully idle account — the block, not the research process, is what's actually broken right now.

### Adjustments for Next Week
- Escalate the investor-profile block to the user again as the top-priority item: 13 consecutive trading days blocked, link outstanding at https://applink.robinhood.com/investment_profile?account_number=504461419&context=second_trade.
- Get the Perplexity API key refreshed/replaced — WebSearch fallback works but is not a permanent substitute.
- Once unblocked, re-validate TSM/AMD (and any other stale ideas) against fresh catalysts rather than reusing last week's entry levels, given Friday's sector-wide chip selloff may have invalidated them.
- No TRADING-STRATEGY.md rule change made this week — one trade's execution slippage isn't enough evidence to justify altering the -7% cut threshold or check cadence yet; keep watching.

### Overall Grade: B-
