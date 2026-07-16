# Research Log

Daily pre-market research entries will be appended here.
Format each entry:

## YYYY-MM-DD — Pre-market Research

### Account
- Equity: $X
- Cash: $X
- Buying power: $X
- Daytrade count: N

### Market Context
- WTI / Brent:
- S&P 500 futures:
- VIX:
- Today's catalysts:
- Earnings before open:
- Economic calendar:
- Sector momentum:

### Trade Ideas
1. TICKER — catalyst, entry $X, stop $X, target $X, R:R X:1
2. ...

### Risk Factors
- ...

### Decision
TRADE or HOLD (default HOLD if no edge)

## 2026-07-16 — Pre-market Research

### Account
- Equity: $49.39 total ($7.39 in GE, $42.00 cash)
- Cash: $42.00 (85.0% of equity — above 25% threshold)
- Buying power: $42.00
- Daytrade count: N/A (cash account, no PDT)

### Market Context
- WTI / Brent: not queried this run (chip-sector story dominated)
- S&P 500 futures: SPY premarket ~752.87, down ~0.26% (prior close 754.81)
- VIX: ~16.6 futures, calm
- Today's catalysts: June PPI fell -0.3% (cooler than expected); TSMC and GE Aerospace both report Q2 earnings before today's open
- Earnings before open: TSMC (beat, raised FY26 rev growth guide to 40%+, stock still down ~3-5% premarket on sell-the-news reaction); GE Aerospace (consensus EPS $1.86 / $11.9B rev, exact results not yet confirmed via search, premarket weakness observed)
- Economic calendar: June PPI (cooler than expected)
- Sector momentum: Broad chip-sector selloff overnight in Asia (SK Hynix -11%, Kospi -6%, Nikkei -3%) on AI-capex-sustainability and memory-glut fears; AMD down ~3.3% premarket on spillover despite no fresh single-stock catalyst

### Trade Ideas
1. GE — URGENT, not a new idea: existing position premarket unrealized ~-7.6% (avg cost 373.01, premarket ~344.71), first breach of the -7% cut trigger. Flag for immediate manual cut at market-open per Sell-Side Rules.
2. TSM — buy-blocked (EQUITY_SUITABILITY, 11th consecutive trading day). Beat + raised guidance, but sector-wide sell-the-news reaction undermines the thesis even if unblocked — would not clear Research Standard today.
3. AMD — buy-blocked (same account block). Down ~3.3% premarket on sector selloff, no fresh single-stock catalyst — cannot execute regardless of block.

### Risk Factors
- Robinhood investor-profile / EQUITY_SUITABILITY block persists 11th consecutive trading day (acct 504461419) — all trades blocked until user completes https://applink.robinhood.com/investment_profile?account_number=504461419&context=second_trade
- Perplexity API still returning 403 (11th consecutive day) — used native WebSearch fallback for all research
- GE has crossed the -7% cut threshold on premarket pricing (fractional shares mean no broker-side stop exists — this is the only stop mechanism)
- Chip-sector momentum has reversed sharply; do not treat today's TSM/AMD pullback as a buy-the-dip setup without a fresh catalyst

### Decision
HOLD new entries — account-level block persists and semis momentum reversed. Priority action: execute the GE -7% cut at market-open per Sell-Side Rules.
