# Trading Strategy

## Mission
Beat the S&P 500 over the challenge window. Stocks only — no options, ever.

## Capital & Constraints
- Starting capital: ~$40, growing via ~$50 deposits every 2 weeks
- Platform: Robinhood (agentic account 504461419)
- Instruments: Stocks ONLY — fractional shares via dollar_amount while account is small
- Cash account: no PDT rule. T+1 settlement.
- Max position size: 20% of current equity (check live equity via get_portfolio each run — do not hardcode a dollar figure)
- Robinhood does NOT support stop orders on fractional shares. There is
  no broker-side stop while position sizes require fractional fills.
  The -7% cut rule (Sell-Side Rules below), enforced via scheduled routine
  checks, is the ONLY stop-loss mechanism until Capital Tier 2.

## Capital Tiers (check current equity via get_portfolio each run; apply the
   highest tier reached — rules only ever get stricter/larger, never relax)

**Tier 1 — under $150 (current):**
- Min position size ~$6-8. Fractional shares required.
- No broker-side stops possible — rely entirely on scheduled -7% checks.
- Max 3 new trades/week.

**Tier 2 — $150-$300:**
- Raise min position size to ~$25-30 where possible (still capped at 20%
  of equity) — smaller trades lose too much edge to spread/slippage.
- For any candidate whose 20%-of-equity allocation can buy 1+ whole share,
  prefer buying whole shares and placing a REAL broker-side stop order
  (10% below entry, GTC) instead of relying solely on scheduled checks.
- Max 3 new trades/week still.

**Tier 3 — $300-$1,000:**
- Prefer whole-share entries over fractional wherever the catalyst/ticker
  allows, specifically to keep real stop orders active on more positions.
- May raise to 4 new trades/week if RESEARCH-LOG is consistently producing
  3+ distinct, catalyst-backed ideas per week (don't raise just to raise).

**Tier 4 — $1,000+:**
- Full 5-6 position diversification target becomes a real goal, not just
  a ceiling.
- Re-evaluate whether -7% flat cut vs. a true trailing-stop-from-peak
  should replace the entry-relative cut — do not change this without
  explicit user approval.

## Core Rules
1. NO OPTIONS — ever
2. 75-85% deployed
3. 5-6 positions at a time, max 20% each
4. Real GTC trailing stop only when whole shares allow it (see Capital
   Tiers); otherwise the scheduled -7% check is the stop mechanism
5. Cut losers at -7% manually (via scheduled routine check)
6. Tighten trail: 7% at +15%, 5% at +20% (broker-side stop) or note for
   next scheduled check (manual cut)
7. Never within 3% of current price; never move a stop down
8. Max new trades/week per current Capital Tier (see above)
9. Follow sector momentum
10. Exit a sector after 2 consecutive failed trades
11. Patience > activity

## Entry Checklist
- Specific catalyst?
- Sector in momentum?
- Stop level (7-10% below entry)
- Target (min 2:1 R:R)

## Buy-Side Gate (all must pass before any buy)
- Total positions after fill <= 6
- Trades this week <= 3
- Position cost <= 20% of equity
- Position cost <= available cash
- daytrade_count < 3 (PDT rule)
- Specific catalyst documented in today's RESEARCH-LOG
- Instrument is a stock (not an option)

## Sell-Side Rules
- Unrealized loss <= -7%: close immediately
- Thesis broken (catalyst invalid, sector rolling over): close regardless of P&L
- Up >= +20%: tighten trailing stop to 5%
- Up >= +15%: tighten trailing stop to 7%
- Never tighten within 3% of current price; never move a stop down
- 2 consecutive failed trades in a sector: exit all positions in that sector

## Stop Fallback Ladder
1. Whole-share position + real GTC trailing stop (10% trail), if Capital
   Tier and position size allow whole shares
2. Fixed GTC stop (10% below entry) if trailing stop order is rejected
3. Fractional position (no broker-side stop possible): rely on scheduled
   -7% checks (market-open/midmorning/midday/daily-summary) as the stop
