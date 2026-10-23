# Chapter 20 — Formulas and Calculations Master Sheet

**After this chapter you should be able to:** perform every calculation that commonly appears on the PMP exam, quickly and accurately, and interpret the result.

> **Exam tip.** The exam has relatively few pure calculation questions, but it often gives you a number (e.g., CPI = 0.8) and asks what it means or what to do. Interpretation matters as much as arithmetic. You will have an on-screen calculator.

## 20.1 Earned value management

| Measure | Formula | Good if… |
|---|---|---|
| Cost variance | **CV = EV − AC** | ≥ 0 |
| Schedule variance | **SV = EV − PV** | ≥ 0 |
| Cost performance index | **CPI = EV ÷ AC** | ≥ 1 |
| Schedule performance index | **SPI = EV ÷ PV** | ≥ 1 |
| Estimate at completion (typical: current CPI continues) | **EAC = BAC ÷ CPI** | ≤ BAC |
| EAC (atypical: rest at budgeted rate) | **EAC = AC + (BAC − EV)** | |
| EAC (CPI and SPI both affect remaining work) | **EAC = AC + (BAC − EV) ÷ (CPI × SPI)** | |
| EAC (re-estimate) | **EAC = AC + bottom-up ETC** | |
| Estimate to complete | **ETC = EAC − AC** | |
| Variance at completion | **VAC = BAC − EAC** | ≥ 0 |
| To-complete performance index (to meet BAC) | **TCPI = (BAC − EV) ÷ (BAC − AC)** | ≤ 1 (easier) |
| TCPI (to meet EAC) | **TCPI = (BAC − EV) ÷ (EAC − AC)** | |
| Percent complete | **EV ÷ BAC** | |
| Percent spent | **AC ÷ BAC** | |
| Planned value at a point (linear plan) | **PV = BAC × (elapsed time ÷ total time)** | |

**Interpretation quick table**

| CPI | SPI | Status |
|---|---|---|
| > 1 | > 1 | Under budget, ahead of schedule |
| > 1 | < 1 | Under budget, behind schedule |
| < 1 | > 1 | Over budget, ahead of schedule |
| < 1 | < 1 | Over budget, behind schedule |

**Drill:** BAC $100,000; PV $50,000; EV $40,000; AC $45,000.
CV = −5,000 · SV = −10,000 · CPI = 0.889 · SPI = 0.80 · EAC = 100,000 ÷ 0.889 ≈ 112,500 · ETC ≈ 67,500 · VAC ≈ −12,500 · TCPI = 60,000 ÷ 55,000 ≈ 1.09.

## 20.2 Estimating

| Measure | Formula |
|---|---|
| Triangular (simple average) | **E = (O + M + P) ÷ 3** |
| Beta / PERT | **E = (O + 4M + P) ÷ 6** |
| PERT standard deviation | **σ = (P − O) ÷ 6** |
| PERT variance | **σ² = [(P − O) ÷ 6]²** |
| Path standard deviation | **√(sum of activity variances)** |
| Confidence ranges | ±1σ ≈ 68.3% · ±2σ ≈ 95.5% · ±3σ ≈ 99.7% |
| Parametric | **Quantity × unit rate** |
| ROM / budget / definitive ranges | −25% to +75% · −10% to +25% · −5% to +10% |

**Drill:** O = 10, M = 16, P = 28 → PERT E = (10 + 64 + 28) ÷ 6 = **17**; σ = 18 ÷ 6 = **3**; 95% range ≈ 17 ± 6 = **11 to 23**.

## 20.3 Schedule network

| Measure | Formula |
|---|---|
| Early finish | **EF = ES + duration** (with ES of first activity = 0) |
| Late start | **LS = LF − duration** |
| Total float | **TF = LS − ES = LF − EF** |
| Free float | **FF = ES (earliest successor) − EF (activity)** |
| Critical path | Longest path; usually zero total float |

(If your course uses "day 1" conventions — EF = ES + duration − 1 — the float results are the same. Be consistent.)

## 20.4 Agile and flow

| Measure | Formula |
|---|---|
| Velocity | Story points of **done** items per iteration |
| Iterations remaining | **Remaining story points ÷ average velocity** (round up) |
| Little's Law | **Cycle time = WIP ÷ throughput** |
| Throughput | Items completed ÷ time period |
| Lead time | Request → delivery |
| Cycle time | Start of work → completion |

**Drill:** 180 points remaining, velocity 24 → 7.5 → **8 iterations**.

## 20.5 Communication

| Measure | Formula |
|---|---|
| Communication channels | **n (n − 1) ÷ 2** |

**Drill:** 6 people → 15 channels; adding 3 people (9) → 36 channels (+21).

## 20.6 Risk

| Measure | Formula |
|---|---|
| Expected monetary value | **EMV = probability × impact** (threats negative, opportunities positive) |
| Risk score (qualitative) | **probability × impact** (on the scales defined in the risk management plan) |
| Decision tree | Expected value of each branch = cost/value + Σ(probability × outcome); choose the best expected value |

**Drill:** 10% chance of $200,000 loss and 30% chance of $50,000 gain → EMV = −20,000 + 15,000 = **−$5,000**.

## 20.7 Finance and selection

| Measure | Formula / rule |
|---|---|
| Present value | **PV = FV ÷ (1 + r)ⁿ** |
| Future value | **FV = PV × (1 + r)ⁿ** |
| NPV | Σ PV of inflows − Σ PV of outflows; choose the **highest** (> 0) |
| IRR | Rate where NPV = 0; choose the **highest** |
| ROI | **(Benefit − cost) ÷ cost × 100%** |
| Payback period | **Investment ÷ annual net cash inflow** (uneven flows: accumulate until recovered) |
| Benefit–cost ratio | **Benefits ÷ costs**; > 1 is favourable |
| Opportunity cost | Value of the **best alternative not chosen** |
| Straight-line depreciation | **(Cost − salvage value) ÷ useful life** |

**Drill:** invest $50,000 in a tool that saves $20,000 per year for 4 years → ROI over 4 years = (80,000 − 50,000) ÷ 50,000 = **60%**; payback = **2.5 years**.

## 20.8 Procurement

| Measure | Formula |
|---|---|
| Make-or-buy break-even (rent vs buy) | Purchase cost + (daily operating cost × d) = daily rental × d → **d = purchase cost ÷ (rental − operating cost)** |
| CPIF / FPIF fee adjustment | **Fee = target fee + seller share × (target cost − actual cost)** |
| Total price (CPIF) | **Actual cost + fee** |
| FPIF price | **Actual cost + adjusted profit**, capped at the **ceiling price** |
| Point of total assumption | **PTA = (ceiling price − target price) ÷ buyer's share ratio + target cost** |

## 20.9 Quality

| Measure | Formula / rule |
|---|---|
| Control limits | Mean ± 3σ (process data) |
| Rule of seven | 7 consecutive points on one side of the mean → investigate |
| Cost of quality | Conformance (prevention + appraisal) + non-conformance (internal + external failure) |
| Six Sigma | 3.4 defects per million opportunities |

## 20.10 Mixed drills (answers below)

1. EV = 120, AC = 100, PV = 150. What are CPI and SPI?
2. BAC = 500, CPI = 1.25. EAC (typical)?
3. A team of 12 adds 4 people. How many channels are added?
4. O = 2, M = 5, P = 14. PERT estimate and σ?
5. Project A: NPV $80k over 4 years; Project B: NPV $95k over 6 years. Which one, and opportunity cost?
6. 25 items in progress, throughput 5 per week. Cycle time?
7. Option 1 costs $40k with a 50% chance of $10k extra; option 2 costs $44k with no risk. Better option by expected cost?
8. FPIF: target cost $80k, target profit $8k, ceiling $96k, share 60/40, actual cost $90k. Price paid?

**Answers:** 1) CPI 1.2, SPI 0.8 (under budget, behind schedule). 2) 400. 3) 12 people → 66 channels; 16 people → 120 channels; **54 added**. 4) E = (2 + 20 + 14) ÷ 6 = **6**; σ = 12 ÷ 6 = **2**. 5) **Project B** (higher NPV — duration already accounted for); opportunity cost **$80k**. 6) 25 ÷ 5 = **5 weeks**. 7) Option 1: 40 + 5 = **$45k**; option 2: $44k → **option 2**. 8) Overrun $10k; seller absorbs 40% = $4k; profit = 8 − 4 = $4k; price = 90 + 4 = **$94k** (below the ceiling of $96k).

%%QUESTIONS%%
@@ | fill
A project has PV = $60,000, EV = $54,000 and AC = $60,000. What is the SPI? (Give one decimal.)
= 0.9
? SPI = EV / PV = 54,000 / 60,000 = 0.9. The project has completed 90% of the work planned to date.

@@
BAC = $800,000, EV = $300,000, AC = $400,000. If the remaining work will be performed at the budgeted rate, what is the ETC?
A) $500,000
B) $666,667
C) $1,066,667
D) $400,000
= A
? With atypical variance, EAC = AC + (BAC − EV) = 400,000 + 500,000 = 900,000. ETC = EAC − AC = $500,000.

@@
A project with 7 stakeholders adds 5 more. How many additional communication channels are created?
A) 45
B) 66
C) 21
D) 5
= A
? 7 people: 21 channels. 12 people: 66 channels. The increase is 45.

@@
Which EAC formula should be used when the original estimate is considered fundamentally flawed?
A) AC + bottom-up ETC
B) BAC / CPI
C) AC + (BAC − EV)
D) AC + (BAC − EV) / (CPI × SPI)
= A
? When the original estimating assumptions are no longer valid, the team re-estimates the remaining work bottom-up and adds it to the actual cost.

@@
An activity has a PERT estimate of 20 days and a standard deviation of 2 days. What is the approximate range for 95% confidence?
A) 16 to 24 days
B) 18 to 22 days
C) 14 to 26 days
D) 20 to 24 days
= A
? About 95% of outcomes fall within ±2 standard deviations: 20 ± 4 = 16 to 24 days.

@@
A tool costs $60,000 and saves $15,000 per year. What is the payback period?
A) 4 years
B) 2 years
C) 6 years
D) 15 years
= A
? Payback = 60,000 / 15,000 = 4 years.

@@
The TCPI to meet the BAC is calculated as 1.35. What does this mean?
A) The remaining work must be done 35% more efficiently than planned to meet the budget
B) The project is 35% under budget
C) The project will finish 35% early
D) The project has a 35% chance of success if it continues at its current rate of performance
= A
? A TCPI above 1 means future performance must exceed planned efficiency. A value such as 1.35 often signals that the BAC is no longer achievable without changes.

@@
Straight-line depreciation: equipment costs $25,000, has a salvage value of $5,000 and a useful life of 4 years. What is the annual depreciation?
A) $5,000
B) $6,250
C) $7,500
D) $4,000
= A
? (Cost − salvage) / life = (25,000 − 5,000) / 4 = $5,000 per year.

@@
Rental of a crane costs $900 per day. Buying costs $54,000 plus $300 per day in operating cost. After how many days is buying cheaper?
A) More than 90 days
B) More than 60 days
C) More than 45 days
D) More than 180 days
= A
? Break-even d = 54,000 / (900 − 300) = 90 days. Beyond 90 days, buying is cheaper.

@@ | fill
A team has 160 story points remaining and an average velocity of 30 points per sprint. How many sprints are needed to complete the work? (Whole number.)
= 6
? 160 / 30 = 5.33, rounded up to 6 sprints, because a partial sprint still has to be scheduled.
