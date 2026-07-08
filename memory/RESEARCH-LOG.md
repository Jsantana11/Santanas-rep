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

## 2026-07-08 — Pre-market Research

NOTE: scripts/alpaca.sh and scripts/perplexity.sh both require .env, which
does not exist in this environment. Account state pulled via the connected
Robinhood MCP server (account 504461419, matches TRADE-LOG's live account).
Perplexity blocked by the environment's outbound network policy (proxy
403s api.perplexity.ai per /__agentproxy/status) — fell back to WebSearch
for all market research per the routine's fallback instruction.

### Account
- Equity (total_value): $49.70
- Cash: $42.00 (84.5% of equity)
- Buying power: $42.00
- Daytrade count: N/A — cash account, no PDT
- Positions: GE only — 0.021447 sh @ avg $373.01; premarket ~$359-361
  (bid $359.01/ask $361.00) vs prior close $366.98 → ~-3.5% unrealized.
  Above -7% cut threshold, no action.

### Market Context
- WTI / Brent: WTI ~$72.26 (+5% premarket), Brent ~$76-78/bbl — spiking on
  Iran ceasefire collapse.
- S&P 500 futures: down ~-0.8% premarket (risk-off).
- VIX: ~16-17, up ~13% intraday — sharp volatility spike.
- Today's catalysts: Trump declared the Iran ceasefire "over"; Iran's IRGC
  struck US targets in Bahrain/Kuwait after US strikes + reimposed
  sanctions on Iranian oil exports over Strait of Hormuz tensions.
  Separately, semiconductor index (SOX) down ~12% over 2 days on a Samsung
  slump — broad tech/growth risk-off. FOMC minutes release today.
- Earnings before open: Levi Strauss (LEVI) confirmed; broader before-open
  list not fully resolved via search — no held/candidate tickers reporting
  today.
- Economic calendar: FOMC minutes today. No CPI/PPI/jobs release confirmed
  for today.
- Sector momentum: Energy YTD leader (+22%) on the ceasefire-collapse
  spike; Industrials/Materials/Staples also in the leading quadrant;
  Healthcare a surprise YTD outperformer (flight-to-safety); Tech cooling
  post-AI-surge; semis sharply weak this week specifically.

### Trade Ideas
1. XOM — catalyst: Brent/WTI +5%+ premarket on confirmed Iran ceasefire
   collapse (IRGC strikes on US bases, reimposed oil sanctions); Energy is
   the YTD sector leader. Premarket ~$144.50 vs prior close $141.69 (+2%
   already). If it holds/extends after the open (not just a premarket
   pop): entry ~open price, stop -7%, target +10% (R:R ~1.4:1). WATCH ONLY
   today — do not chase the premarket spike.
2. CVX — same catalyst, diversifies within energy majors. Premarket
   ~$177.50 vs prior close $174.01 (+2%). Same watch-only treatment: entry
   only on confirmed post-open strength, stop -7%, target +10%.
3. LMT/defense — NOT actionable. Already +37-40% YTD on prior 2026 Iran
   escalations, and reporting is mixed (some outlets report defense names
   "stumbling" on this exact escalation, with analysts noting gains need
   the conflict to actually expand/last for earnings estimates to move
   further). Fails the 2-source-same-direction bar — discarded.

### Risk Factors
- VIX +13% intraday — extreme, headline-driven volatility; any
  de-escalation headline could reverse oil/energy sharply and fast.
- Tier-1 fractional-share account has zero broker-side stop capability —
  a fast reversal could blow through -7% before the next scheduled check.
- Energy premarket prices already +2% — real entry risk is chasing a
  spike, not catching fresh strength.
- Semiconductor sector cratering (SOX -12% in 2 days) — broader growth/
  tech risk-off backdrop, unrelated sector but signals fragile tape.
- GE (held) at -3.5%, still above cut threshold — monitor at market-open
  check, no action needed now.

### Decision
HOLD — no new trade today.
Cash is 84.5% of equity (over the 25% gate) with only 1 of 5-6 target
positions filled, so this needs explicit justification: the energy
catalyst (Iran ceasefire collapse, oil +5%) is real and multi-sourced, but
it's already run 2% premarket during a VIX+13% event, and this tier-1
account has no broker-side stop to protect against a fast reversal if a
de-escalation headline hits. Entering into an already-spiked premarket
price under those conditions doesn't clear the "logic justifies upside
from here" bar. XOM/CVX go on the watchlist for market-open: if energy
holds/extends post-open and VIX/futures stabilize, revisit as a same-day
candidate. GE position unchanged.
