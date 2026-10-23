# Chapter 11 — Finance Performance Domain

**After this chapter you should be able to:**
- describe the four Finance processes and the financial management plan;
- choose estimating techniques and state typical accuracy ranges;
- build a budget with contingency and management reserves and explain the cost baseline;
- perform earned value calculations and forecasts, and interpret the results;
- evaluate projects with financial measures (NPV, IRR, ROI, payback, BCR) and explain funding concepts.

## 11.1 What the Finance domain covers

The Finance domain addresses **the planning, estimating, budgeting, funding and control of the project's financial resources**, and the link between money spent and value created. It replaces the Sixth Edition's Cost Management and broadens it to **funding, financial value and financial governance**.

| Process | Focus area | Key output |
|---|---|---|
| **Plan Financial Management** | Planning | Financial management plan |
| **Estimate Costs** | Planning | Cost estimates, basis of estimates |
| **Develop Budget** | Planning | Cost baseline, project funding requirements |
| **Monitor and Control Finances** | Monitoring and Controlling | Work performance information, cost forecasts, change requests |

**Desired outcomes:** costs are estimated realistically; funding is available when needed; spending is tracked against value delivered; variances are detected early and acted on; financial decisions support the business case.

## 11.2 Plan Financial Management

The **financial management plan** (formerly cost management plan) defines: **units of measure** (currency, staff-hours); **level of precision** (rounding, e.g., to the nearest $100); **level of accuracy** (acceptable range, e.g., ±10%, including contingency); **organisational procedure links** (control accounts in the WBS); **control thresholds** (variance that triggers action); **rules of performance measurement** (EVM techniques, how % complete is measured); funding sources and timing; currency and exchange-rate handling; reporting formats; approval authorities for spending.

## 11.3 Estimate Costs

### Cost concepts

| Concept | Meaning |
|---|---|
| **Direct costs** | Attributable directly to the project (team salaries, materials) |
| **Indirect costs** | Shared across projects (overheads such as office rent, utilities) |
| **Fixed costs** | Do not change with volume (equipment set-up) |
| **Variable costs** | Change with volume (materials per unit, hourly labour) |
| **Sunk costs** | Already spent and cannot be recovered — **must not influence** future decisions |
| **Opportunity cost** | The value of the best alternative given up by choosing one option |
| **Life-cycle costing** | Total cost of ownership over the product's life (acquisition, operation, maintenance, disposal) |
| **Depreciation** | Allocation of an asset's cost over its useful life (straight-line or accelerated) |
| **Cost of quality** | Conformance + non-conformance costs (Chapter 9) |

### Estimating techniques

Same family as duration estimating: **analogous**, **parametric**, **bottom-up**, **three-point** (PERT), expert judgment, **reserve analysis**, **cost of quality**, **alternatives analysis**, decision-making, PMIS, and (in adaptive work) estimating by **team cost per iteration** (burn rate) or **cost per story point**.

### Accuracy ranges

| Estimate | Typical range | When |
|---|---|---|
| **Rough order of magnitude (ROM)** | **−25% to +75%** | Initiation |
| **Budget estimate** | −10% to +25% | Early planning |
| **Definitive estimate** | **−5% to +10%** | Detailed planning |

The output includes **cost estimates** and the **basis of estimates** (documentation of how the estimate was derived, assumptions, constraints, range, confidence level).

## 11.4 Develop Budget

**Cost aggregation:** activity estimates → work package estimates → control accounts → project.

| Layer | Contents |
|---|---|
| Activity and work package cost estimates | From Estimate Costs |
| **+ Contingency reserves** | For **identified** risks (known-unknowns); controlled by the PM within the plan's rules |
| **= Cost baseline** | Approved, time-phased budget (the **S-curve**); basis for EVM; = **BAC** |
| **+ Management reserves** | For **unidentified** risks (unknown-unknowns); controlled by management/sponsor; using them requires a change to the cost baseline |
| **= Project budget** | Total funds authorised |

> **Exam tip.** The **cost baseline includes contingency reserve but not management reserve**. Earned value is measured against the cost baseline (the PMB), so management reserve is **not** part of BAC.

**Funding limit reconciliation:** compare planned spending with funding limits (e.g., the organisation can release only $200,000 per quarter); reschedule work if necessary. **Project funding requirements** are derived from the cost baseline plus management reserve and are often provided in **incremental, step-like amounts**, while the expenditure curve is smooth.

**Funding sources** may include internal capital budgets, external financing, grants, customer payments, public–private partnerships. **CAPEX** (capital expenditures, creating assets) vs **OPEX** (operational expenditures, running costs) treatment matters to finance departments and can affect how agile work is funded.

**Adaptive funding:** many organisations fund **persistent teams or products** for a period (e.g., a quarter) and decide continuation based on value delivered (incremental or "venture capital" style funding).

## 11.5 Monitor and Control Finances — earned value management (EVM)

EVM integrates scope, schedule and cost to measure performance and forecast results.

### The three basic values

| Term | Definition | Question it answers |
|---|---|---|
| **PV — planned value** | Authorised budget assigned to the work **scheduled** to be done by now | How much work *should* be done? |
| **EV — earned value** | Budgeted value of the work **actually completed** by now | How much work *is* done (in budget terms)? |
| **AC — actual cost** | Actual cost incurred for the work completed by now | How much did the completed work *cost*? |
| **BAC — budget at completion** | Total planned value of the project (the cost baseline) | What is the total budget? |

### Variances and indices

| Measure | Formula | Interpretation |
|---|---|---|
| **Cost variance** | **CV = EV − AC** | Negative = over budget; positive = under budget |
| **Schedule variance** | **SV = EV − PV** | Negative = behind schedule; positive = ahead |
| **Cost performance index** | **CPI = EV ÷ AC** | < 1 = over budget (getting less than $1 of work per $1); > 1 = under budget |
| **Schedule performance index** | **SPI = EV ÷ PV** | < 1 = behind; > 1 = ahead |
| **Variance at completion** | **VAC = BAC − EAC** | Negative = expected overrun |

*Memory aid:* **EV comes first** in every variance and every index. Negative/less than 1 is bad.

### Forecasting: estimate at completion (EAC)

| Situation | Formula |
|---|---|
| Current cost performance will **continue** (most common default) | **EAC = BAC ÷ CPI** |
| Past variance was **atypical**; future work at the planned rate | **EAC = AC + (BAC − EV)** |
| Both cost and schedule performance influence the remaining work | **EAC = AC + [(BAC − EV) ÷ (CPI × SPI)]** |
| The original estimate is **fundamentally flawed**; re-estimate | **EAC = AC + bottom-up ETC** |

**Estimate to complete:** **ETC = EAC − AC** (how much more will we spend).

**To-complete performance index (TCPI)** — the cost performance needed on the remaining work to meet a target:
- To meet the **BAC**: **TCPI = (BAC − EV) ÷ (BAC − AC)**
- To meet a new approved **EAC**: TCPI = (BAC − EV) ÷ (EAC − AC)
- TCPI > 1 → you must be **more efficient** than planned for the rest of the project.

### Worked example

A project has BAC = $200,000, planned to finish in 10 months at an even spend rate. At the end of month 4, the project is 30% complete and has spent $70,000.

- PV = 40% × 200,000 = **$80,000** (4 of 10 months)
- EV = 30% × 200,000 = **$60,000**
- AC = **$70,000**
- CV = 60,000 − 70,000 = **−$10,000** (over budget)
- SV = 60,000 − 80,000 = **−$20,000** (behind schedule)
- CPI = 60,000 ÷ 70,000 = **0.857**
- SPI = 60,000 ÷ 80,000 = **0.75**
- EAC (typical) = 200,000 ÷ 0.857 ≈ **$233,333**
- ETC = 233,333 − 70,000 ≈ **$163,333**
- VAC = 200,000 − 233,333 ≈ **−$33,333**
- TCPI (to meet BAC) = (200,000 − 60,000) ÷ (200,000 − 70,000) = 140,000 ÷ 130,000 ≈ **1.077**

**Interpretation:** the project is over budget and behind schedule; at the current efficiency it will overrun by about $33,000; to finish within the original budget the team would need to work about 7.7% more efficiently than planned — unrealistic unless something changes. The PM should analyse root causes and present options (scope trade-offs, corrective actions, re-baseline through change control).

### Measuring percent complete (rules of performance measurement)

- **0/100** — credit only when complete (conservative; for short tasks).
- **50/50** or **20/80** — partial credit at start, the rest at completion.
- **Weighted milestones**, **physical % complete**, **units completed**.
- Avoid subjective "90% done" estimates — the 90% syndrome.

### Other control techniques

**Variance analysis**, **trend analysis**, **reserve analysis** (are remaining reserves adequate? release unused contingency when risks pass), **forecasting**, **burn rate** tracking in agile (team cost per sprint × sprints remaining), **agile EVM** (EV based on story points completed vs planned per release).

## 11.6 Financial measures for selecting and justifying projects

| Measure | Formula / meaning | Decision rule |
|---|---|---|
| **Present value (PV)** | PV = FV ÷ (1 + r)ⁿ | Converts future money into today's money |
| **Net present value (NPV)** | Sum of discounted inflows − discounted outflows (initial investment) | **Higher is better; NPV > 0 is acceptable.** NPV already accounts for the project's duration — do not adjust for years again |
| **Internal rate of return (IRR)** | Discount rate at which NPV = 0 | **Higher is better**; compare with the cost of capital (hurdle rate) |
| **Return on investment (ROI)** | (Net benefit ÷ cost) × 100% | Higher is better |
| **Payback period** | Time to recover the initial investment from net cash inflows | **Shorter is better**; ignores time value of money (unless discounted) and benefits after payback |
| **Benefit–cost ratio (BCR)** | Benefits ÷ costs (present values) | **> 1** means benefits exceed costs; higher is better |
| **Opportunity cost** | Value of the option not chosen | When choosing project A (NPV 50k) over B (NPV 40k), the opportunity cost is **40k** |
| **Economic value added (EVA)** | Net operating profit after tax − (capital × cost of capital) | Positive means value is created |

*PV example:* $121,000 received in 2 years at 10% → PV = 121,000 ÷ 1.21 = **$100,000**.

*Payback example:* invest $300,000; net inflows $75,000 per year → payback = **4 years**.

> **Trap.** **Sunk costs** are irrelevant: "We have already spent $2 million, so we must continue" is not a valid reason. Decide based on future costs and benefits.

%%QUESTIONS%%
@@ | fill
A project has EV = $45,000 and AC = $50,000. What is the CPI? (Give two decimals.)
= 0.90
? CPI = EV / AC = 45,000 / 50,000 = 0.90. The project gets 90 cents of work for every dollar spent, so it is over budget.

@@
BAC = $500,000, EV = $200,000, AC = $250,000, PV = $220,000. Assuming current cost performance continues, what is the EAC?
A) $625,000
B) $550,000
C) $520,000
D) $450,000
= A
? CPI = 200,000 / 250,000 = 0.8. EAC = BAC / CPI = 500,000 / 0.8 = $625,000.

@@
Using the same data (BAC $500,000, EV $200,000, AC $250,000, PV $220,000), what is the schedule variance?
A) −$20,000
B) −$50,000
C) $20,000
D) −$30,000
= A
? SV = EV − PV = 200,000 − 220,000 = −$20,000, so the project is behind schedule.

@@
Using the same data (BAC $500,000, EV $200,000, AC $250,000), what is the TCPI needed to finish within the BAC?
A) 1.20
B) 0.83
C) 1.00
D) 1.25
= A
? TCPI = (BAC − EV) / (BAC − AC) = 300,000 / 250,000 = 1.20. The team would need to be 20% more efficient than planned on the remaining work.

@@
Which reserve is included in the cost baseline?
A) Contingency reserve
B) Management reserve
C) Both contingency and management reserves
D) Neither reserve
= A
? The cost baseline includes contingency reserves for identified risks. Management reserves for unknown-unknowns are added to obtain the project budget but are excluded from the baseline.

@@
A project has an SPI of 1.10 and a CPI of 0.85. How is the project performing?
A) Ahead of schedule and over budget
B) Behind schedule and under budget
C) Ahead of schedule and under budget
D) Behind schedule and over budget
= A
? SPI above 1 means more work was done than planned (ahead). CPI below 1 means the work cost more than budgeted (over budget).

@@
During initiation, the sponsor asks for an estimate. Little information is available. What accuracy range is typical?
A) −25% to +75%
B) −5% to +10%
C) −10% to +10%
D) Exact, because the budget is fixed
= A
? Early rough order of magnitude estimates are typically −25% to +75%. Definitive estimates later in planning are −5% to +10%.

@@
Project A has an NPV of $120,000 over 5 years, and Project B has an NPV of $95,000 over 2 years. Only one can be selected. Which should be chosen based on NPV, and what is the opportunity cost?
A) Project A; opportunity cost $95,000
B) Project B, because it is shorter; opportunity cost $120,000
C) Project A; opportunity cost $25,000
D) Project B; opportunity cost $25,000
= A
? NPV already accounts for timing, so choose the higher NPV. The opportunity cost is the value of the option not chosen: $95,000.

@@
Variances from a one-off supplier error are considered atypical and the remaining work is expected to proceed at the budgeted rate. AC = $80,000, EV = $70,000 and BAC = $300,000. What is the EAC?
A) $310,000
B) $342,857
C) $300,000
D) $230,000
= A
? For atypical variance, EAC = AC + (BAC − EV) = 80,000 + 230,000 = $310,000.

@@
A steering committee member argues that a failing project must continue because $3 million has already been spent. Which concept should the project manager explain?
A) Sunk costs should not drive decisions about future investment
B) Opportunity cost requires the project to continue until the end
C) Depreciation makes the project cheaper over time
D) Management reserve covers all past spending
= A
? Money already spent cannot be recovered regardless of the decision. The decision should be based on future costs, benefits and value.

@@ | multi
Which two items are true about management reserve? (Choose two.)
A) It addresses unknown-unknowns
B) Using it normally requires approval from management and a change to the cost baseline
C) It is part of the cost baseline and BAC
D) The project manager may spend it freely for identified risks
E) It is used to calculate CPI
= A, B
? Management reserve covers unidentified risks; it is outside the cost baseline and its use requires management approval and a baseline change.

@@
An investment of $400,000 generates net cash inflows of $100,000 per year. What is the simple payback period?
A) 4 years
B) 2.5 years
C) 5 years
D) 40 years
= A
? Payback = initial investment / annual net inflow = 400,000 / 100,000 = 4 years.

@@
What is the present value of $242,000 to be received in two years if the discount rate is 10%?
A) $200,000
B) $220,000
C) $217,800
D) $193,600
= A
? PV = FV / (1 + r)^n = 242,000 / 1.21 = $200,000.

@@
The spending curve of a project rises smoothly, but the organisation releases funds quarterly. What is the most appropriate action during Develop Budget?
A) Perform funding limit reconciliation and adjust the schedule of work if needed
B) Ignore the funding schedule, because the cost baseline has already been approved by the sponsor
C) Ask the team to work unpaid when funds run out
D) Remove contingency reserves
= A
? Funding limit reconciliation compares planned expenditure with funding constraints and may require rescheduling work so spending does not exceed available funds.
