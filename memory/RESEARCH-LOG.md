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

## 2026-08-20 — Pre-market Research

### Account
- BLOCKED: could not verify live account state. `ALPACA_API_KEY` is unset
  (broker was switched to Robinhood per commit f4a027e "Switch broker from
  Alpaca to Robinhood agentic account") and the Robinhood MCP connector is
  not authorized in this session — no live equity/cash/positions/orders
  reachable via any channel this run.
- Last known state (local mirror, may be stale): Day 0 baseline $40 cash;
  one GE fractional buy logged 2026-06-29 ($8.00, 0.021447 sh @ $372.9999).
  Google Sheets TRADE-LOG tab is the real source of truth and was not
  checked (no access from this session).

### Market Context
- WTI / Brent: Perplexity blocked — proxy gateway returned 403 on
  `api.perplexity.ai` (network policy denial, not a credential issue).
  Falling back to WebSearch per instructions; oil price not directly
  queried this run, but oil referenced below.
- S&P 500 futures: steadied/higher premarket; Nasdaq-100 led gains after
  Treasury bond-market intervention pulled yields down.
- VIX: ~18.3 (S&P 500 VIX futures), tight range 18.18–18.33 — calm/low
  volatility regime.
- Today's catalysts: Moderna Phase 3 mRNA cancer vaccine data (+~60%
  premarket), Merck +7.5% on the same read-through; Treasury doubling
  debt repurchases ($2B→$4B+) drove a 30Y yield rally (-10bps to 5.18%);
  gold at highest since early June on falling yields; oil ~$85/bbl on a
  4-day win streak; Trump pressing Congress on crypto legislation lifted
  Bitcoin; Trump also vowed to squeeze Iran economically.
- Earnings before open: not confirmed this run (search did not surface a
  clean pre-open earnings slate — flag as unverified, do not rely on it).
- Economic calendar: PPI ran hot (+0.7% headline vs +0.4% consensus, core
  +0.2% in line); Retail Sales +0.6% vs +0.4% expected — both prints
  ahead of an upcoming FOMC meeting. Exact CPI/jobs timing for today not
  confirmed.
- Sector momentum: Healthcare/biotech (Moderna/Merck catalyst), energy
  (oil uptrend), precious metals (gold) showing strength today; broad
  tape calm (low VIX) with risk-on tilt post bond intervention.
- Held-ticker news: GE — not queried this run (blocked on confirming GE
  is even still an open position without account access).

### Trade Ideas
Not evaluated to entry/stop/target this run — see Decision. Watchlist
only, for next run once account access is restored:
1. MRK — Merck +7.5% premarket on Moderna's positive Phase 3 mRNA cancer
   vaccine read-through (partnership/adjacent oncology exposure). Needs
   confirmation of the specific Merck-Moderna link and whether the move
   is already fully priced by next check.
2. Energy names — WTI ~$85/bbl, 4-day win streak; needs a specific
   catalyst-backed name (not just "oil is up") before it qualifies under
   the Research Standard.

### Risk Factors
- Cannot verify current equity, cash, open positions, or existing stop
  orders — placing any new trade or judging position-count/cap-per-week
  limits is impossible until account access is restored.
- Perplexity primary research path is blocked at the network layer
  (proxy policy 403), not just missing a key — flag for whoever manages
  the environment's allowlist.
- CLAUDE.md and memory/PROJECT-CONTEXT.md still describe a ~$10,000
  Alpaca account; actual broker per TRADING-STRATEGY.md/TRADE-LOG.md is
  Robinhood, ~$40 starting capital. These docs are inconsistent — should
  be reconciled so future scheduled runs don't waste a cycle on the wrong
  broker's API wrapper.

### Decision
HOLD — mandatory. No trade can pass the Buy-Side Gate without live
equity/cash/position data, which was unreachable this entire run
(Alpaca creds absent, Robinhood MCP unauthorized). No action taken.
