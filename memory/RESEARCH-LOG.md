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

## 2026-07-27 — Pre-market Research

NOTE: Platform mismatch flagged — CLAUDE.md/PROJECT-CONTEXT.md describe a
~$10k Alpaca account, but the live connected broker is Robinhood (agentic
account 504461419, ~$70 total value) per TRADING-STRATEGY.md/TRADE-LOG.md.
scripts/alpaca.sh fails (no ALPACA_API_KEY in .env). Used Robinhood MCP
tools for all account data below — flagging for user to confirm which
platform/memory set is authoritative.

### Account
- Total account value: $69.61
- Equity (positions): $22.06 (AMD $14.04, TSM $8.02)
- Cash: $47.55 (68% of account — exceeds 25% deployment threshold)
- Buying power: $47.55
- Daytrade count: N/A (Robinhood cash account, no PDT)
- Capital Tier: 1 (under $150) — max 3 new trades/week, 0 used this week

### Market Context
- WTI / Brent: WTI ~$82.46, Brent ~$87.89 (both -7% on US-Iran de-escalation, ceasefire holding over the weekend)
- S&P 500 futures: +0.8% premarket; Nasdaq-100 futures +1.6% on the same de-escalation + strong Services PMI (53.6, 8-mo high) and durable/home-sales data
- VIX: ~18.9-19.0 (calm-ish, off recent highs)
- Today's catalysts: Iran/Iraq ceasefire relief rally; durable goods orders + Nucor earnings (after close) today; markets bracing for a heavy week
- Earnings before open: no major names confirmed before today's bell; NUE reports AFTER close today (EPS est. ~$4.53-4.63 vs $2.60-2.65 y/y, rev est. $10.3B) — binary event, not a pre-open catalyst
- Economic calendar: FOMC meets Jul 28-29 (rate decision + press conf Jul 29, ~64% hold odds per CME FedWatch, down from 87% a week ago); PCE inflation data this week; KO/BA/V earnings Jul 28, MSFT/META earnings Jul 29
- Sector momentum: Energy leads YTD (+22%) but just took an oil-price gut punch from the ceasefire; Healthcare a surprise YTD flight-to-safety leader; Tech/semis +26% YTD but flagged by some desks for 2H leadership risk; Industrials still outperforming

### Position Notes (existing holdings)
- AMD: $14.04 (~20.2% of account, at/slightly over the 20% cap — no room to add). Thesis intact and strengthening: Zen 6 "Venice" launch + Helios platform at Advancing AI 2026 (Jul 22-23), Meta confirmed as Helios customer, Goldman PT $640 / BofA PT $620. This is genuinely new info since the 7/20-7/21 entries, but position size blocks any add regardless.
- TSM: $8.02 (~11.5% of account, room to add up to cap). Q2 beat big (net profit +77% y/y, FY26 revenue growth guide raised to 40%+), but stock down ~15% this month purely on lighter Q3 margin guidance (65-67%, tied to 2nm ramp costs) — Barclays calling it a disappointment. No NEW catalyst since the 7/20 entry (the Q2 print was already known/priced by then) — Add-to-Winner rule not satisfied, so no add today despite room under the cap.

### Trade Ideas
1. TSM (add candidate, not today) — catalyst needed: confirmation of AI capex strength from MSFT/META earnings Jul 29 would be a genuinely new, independent catalyst. If it hits and TSM is flat/green, add up to the 20% cap. Entry ~$405-410 (current), stop -7% (~$381), target +12-15% (~$460-470), R:R ~1.7:1. Watching, not acting pre-market.
2. NUE — skip. Earnings are AFTER close today (binary/gambling entry pre-print), and Industrials already has one failed trade this cycle (GE, -8.7%). Not a qualifying pre-market catalyst; revisit only on a confirmed post-earnings reaction with real news, not the print itself.
3. No new-name idea cleared the 2+ independent source / logical-upside bar today — nothing else surfaced beyond what's already priced into AMD/TSM.

### Risk Factors
- FOMC Jul 28-29: hold-vs-cut odds swung noticeably in the past week (87%→64% hold) — rate-decision volatility risk into Thursday
- Oil/geopolitical reversal risk: ceasefire could break, snapping oil (and energy-linked names) back the other way fast
- Mega-cap earnings (MSFT, META Jul 29) — high-vol event for the whole Tech/semis complex that TSM/AMD sit in
- TSM margin-guidance overhang could persist until 2nm ramp costs clear
- Industrials: 1 failed trade (GE) logged — one more failed industrials trade triggers the 2-consecutive-fail sector exit rule; NUE earnings gamble would risk exactly that

### Decision
HOLD — no new buy today. Cash is 68% of account (exceeds the 25%
deployment threshold) with only 2 of 5-6 target positions open, but no
candidate today clears the fresh-catalyst bar (AMD is at cap, TSM has no
NEW catalyst, NUE is a pre-earnings gamble that would risk an industrials
sector blackout). Reason logged per Buy-Side Gate cash-deployment check.
Re-evaluate TSM add and general deployment after FOMC (Jul 29) and
MSFT/META earnings (Jul 29) produce real, fresh catalysts.
