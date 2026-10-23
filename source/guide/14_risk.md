# Chapter 14 — Risk Performance Domain

**After this chapter you should be able to:**
- distinguish individual risks, overall project risk, issues and uncertainty;
- describe the six Risk processes and their outputs (risk management plan, risk register, risk report);
- analyse risks qualitatively and quantitatively (probability-impact, EMV, decision trees, Monte Carlo, sensitivity);
- select response strategies for threats and opportunities, including contingency and fallback plans;
- monitor risks and manage reserves in predictive and adaptive contexts.

## 14.1 Key concepts

| Term | Meaning |
|---|---|
| **Risk** | An uncertain event or condition that, if it occurs, has a **positive or negative** effect on one or more objectives |
| **Threat** | A risk with a negative effect |
| **Opportunity** | A risk with a positive effect |
| **Individual project risk** | A specific uncertain event or condition |
| **Overall project risk** | The effect of uncertainty on the project **as a whole** — from all sources, including individual risks — representing the exposure of stakeholders to variations in outcome |
| **Issue** | A current condition or situation that is **already happening** and must be resolved (logged in the **issue log**) |
| **Risk appetite** | The degree of uncertainty an organisation or individual is willing to accept in anticipation of a reward |
| **Risk threshold** | The measure of acceptable variation around an objective (e.g., cost overrun > 5% is unacceptable) — reflects appetite |
| **Risk tolerance** | Older term close to threshold: the degree of risk that can be withstood |
| **Known-unknowns** | Identified risks → contingency reserve |
| **Unknown-unknowns** | Unidentified risks → management reserve |
| **Residual risk** | Risk remaining after responses are implemented |
| **Secondary risk** | A new risk that arises **as a direct result** of implementing a risk response |
| **Trigger condition** | An event or situation indicating a risk is about to occur |
| **Workaround** | An **unplanned** response to a risk that has occurred (or to an issue) — not planned in advance |
| **Contingency plan** | A planned response executed if a trigger occurs |
| **Fallback plan** | A plan B used if the contingency plan (primary response) is not effective |
| **Risk owner** | The person responsible for monitoring a risk and implementing its response |

Other forms of uncertainty the Guide asks you to recognise: **ambiguity** (unclear situation — use expert judgment, experiments, progressive elaboration), **complexity** (many interacting parts — use systems thinking, simulation, decoupling) and **volatility** (rapid, unpredictable change — use alternatives analysis, reserves). The acronym **VUCA** (volatility, uncertainty, complexity, ambiguity) summarises them. **Resilience** — the ability to absorb and recover from impacts — is built through reserves, flexibility, redundancy and learning.

## 14.2 Plan Risk Management *(Planning)*

**Risk management plan** contents: risk strategy; methodology; roles and responsibilities; funding (reserves); timing (when and how often risk activities happen); **risk categories** (often a **risk breakdown structure, RBS** — e.g., technical, management, commercial, external); **stakeholder risk appetite**; **definitions of risk probability and impact** (scales); **probability and impact matrix** (with rules for high/medium/low); reporting formats; tracking.

## 14.3 Identify Risks *(Planning)*

**Purpose:** identify individual risks and sources of overall project risk, and document their characteristics. Identification is **iterative** — everyone on the team should be encouraged to identify risks at any time.

**Techniques:** expert judgment; **brainstorming**; **checklists** (from historical information — useful but never exhaustive); **interviews**; **root-cause analysis**; **assumption and constraint analysis** (inaccurate, unstable or incomplete assumptions are risks); **SWOT analysis** (strengths, weaknesses, opportunities, threats); **document analysis**; **prompt lists** — e.g., **PESTLE** (political, economic, social, technological, legal, environmental), **TECOP** (technical, environmental, commercial, operational, political), **VUCA**; facilitation; meetings (risk workshops); **Delphi technique** (anonymous expert rounds to reach consensus, reducing bias).

**Risk statement (metalanguage):** *"Because of <cause>, <uncertain event> may occur, which would lead to <effect>."* Example: "Because the vendor is a new supplier, delivery of the servers may be late, which would delay testing by three weeks."

**Outputs:** the **risk register** (list of identified risks, potential risk owners, potential responses, later: causes, categories, probability, impact, priority, triggers, responses, residual and secondary risks) and the **risk report** (sources of overall project risk and summary information on individual risks — updated throughout).

## 14.4 Perform Risk Analysis *(Planning)*

In the Eighth Edition this single process covers both **qualitative** and **quantitative** analysis.

### Qualitative analysis (always performed; fast, subjective)

- **Probability and impact assessment** on defined scales (e.g., 1–5 or very low to very high).
- **Probability and impact matrix** — combine both to rank risks (high, medium, low).
- **Assessment of other risk parameters:** **urgency** (how soon a response is needed), **proximity** (how soon the risk could affect objectives), **dormancy** (time between occurrence and discovery of its impact), **manageability**, **controllability**, **detectability**, **connectivity** (relationships with other risks), **strategic impact**, **propinquity** (how much the risk matters to stakeholders).
- **Risk data quality assessment** — how accurate and reliable is the data about the risk?
- **Risk categorisation** — by source (RBS), affected WBS element, phase — reveals common root causes.
- **Data representation** — heat maps, hierarchical charts (bubble charts showing three parameters).
- Output: updated risk register (priorities, owners), assumption log, issue log, risk report.

### Quantitative analysis (only when justified — high-value, complex, high-risk projects)

| Technique | Use |
|---|---|
| **Monte Carlo simulation** | Run thousands of iterations of the schedule or cost model using probability distributions → probability of meeting targets (S-curve; e.g., "P80 completion date is 15 March") |
| **Sensitivity analysis (tornado diagram)** | Which individual risks or uncertain variables have the **most potential impact** on outcomes (longest bar at the top) |
| **Decision tree analysis** with **expected monetary value (EMV)** | Choose the best alternative when outcomes are uncertain |
| **Influence diagrams** | Graphical representation of decision situations, uncertainties and outcomes |
| **Criticality analysis** | How often an activity appears on the critical path across simulation iterations |

**Expected monetary value (EMV)** = probability × impact. Opportunities have **positive** values, threats **negative**. The EMV of a set of risks is the sum.

*Example:* Risk A: 30% chance of a $50,000 delay penalty → EMV = −$15,000. Opportunity B: 20% chance of a $40,000 early-completion bonus → EMV = +$8,000. Net EMV = **−$7,000** → a contingency reserve of about $7,000 could be justified for these two items.

**Decision tree example:** Option 1 — build in-house: cost $200,000; 40% chance of an extra $60,000 problem. Expected cost = 200,000 + (0.4 × 60,000) = **$224,000**. Option 2 — buy: cost $230,000; 10% chance of an extra $20,000. Expected cost = 230,000 + 2,000 = **$232,000**. → Choose **build** (lower expected cost).

## 14.5 Plan Risk Responses *(Planning)*

### Strategies for threats

| Strategy | Description | Example |
|---|---|---|
| **Escalate** | The threat is **outside the project's scope** or the PM's authority; pass it to the appropriate owner (program, portfolio, other part of the organisation). Once escalated, it is no longer monitored by the project (though it may be noted) | A risk to the company's market position spotted by the project |
| **Avoid** | Eliminate the threat or protect the project from its impact (change the plan, extend the schedule, reduce scope, use a proven approach) | Drop an unproven technology |
| **Transfer** | Shift ownership and impact to a **third party** (insurance, warranties, performance bonds, fixed-price contracts, outsourcing). Usually involves paying a premium. The risk is not eliminated | Buy insurance |
| **Mitigate** | **Reduce probability and/or impact** to an acceptable level | Extra testing, prototypes, redundant suppliers |
| **Accept** | Acknowledge the threat without proactive action. **Active acceptance** = establish a contingency reserve (time, money, resources); **passive acceptance** = no action other than periodic review | Accept small weather delays with a schedule reserve |

### Strategies for opportunities

| Strategy | Description | Example |
|---|---|---|
| **Escalate** | Opportunity outside the project's scope or authority → pass to the right owner | Savings for the whole company |
| **Exploit** | Make sure the opportunity **definitely happens** (raise probability to 100%) | Assign the most talented resources to finish early and earn a bonus |
| **Share** | Allocate ownership to a third party best able to capture the benefit (joint ventures, partnerships, teaming agreements) | Partner with a firm that has a complementary technology |
| **Enhance** | **Increase probability and/or impact** | Add resources to an activity to finish early |
| **Accept** | Take advantage if it occurs, without pursuing it actively | — |

### Overall project risk responses

Avoid (e.g., cancel or re-scope), exploit, transfer/share, mitigate/enhance, accept (active: overall contingency reserve).

### Other response elements

- **Contingent response strategies** — designed for use only if certain events occur (with **triggers**).
- **Fallback plans** — if the primary response fails.
- **Risk owner** for each risk, and **risk action owners** for specific actions.
- **Contingency reserves** (time and cost) calculated with EMV, simulation or percentages.
- **Secondary risks** and **residual risks** documented.
- **Cost-benefit analysis** of responses — a response should not cost more than the risk it addresses (unless required by compliance or values).

## 14.6 Implement Risk Responses *(Executing)*

**Purpose:** implement the agreed risk response plans. A common failure is that responses are planned but **never executed** — risk owners must act. Outputs: change requests, updates to the risk register and risk report, issue log, lessons learned.

## 14.7 Monitor Risks *(Monitoring and Controlling)*

**Purpose:** monitor implementation of responses, track identified risks, identify new risks, evaluate risk process effectiveness.

- **Risk reassessment** — regularly review existing risks, close outdated ones, identify new ones.
- **Risk audits** — examine the effectiveness of the risk management **process** and of responses.
- **Reserve analysis** — compare remaining reserves with remaining risk; release reserves when risks pass.
- **Technical performance analysis** — compare technical achievements with the plan (e.g., weight, transaction speed).
- **Trend and variance analysis**, **meetings** (risk reviews).
- When a **risk occurs**, implement the planned response; it becomes an **issue** to manage. If no response was planned, apply a **workaround** and then update the risk register and lessons learned.

> **Exam tip.** A trigger for an identified risk occurs → **implement the contingency plan** defined in the risk register (involving the risk owner). An unidentified problem appears → it is an **issue**: manage it (workaround, issue log, possibly a change request) and then **identify any new risks**.

## 14.8 Risk in adaptive and hybrid projects

- **Short iterations, frequent delivery and feedback** reduce risk by validating assumptions early.
- **Risk-adjusted backlog** — risk responses become backlog items that the product owner prioritises alongside features; high-risk items are often tackled early.
- **Spikes** — timeboxed research or experiments to reduce technical or design uncertainty.
- **Daily stand-ups and retrospectives** surface risks and impediments continuously; information radiators make them visible.
- **Cross-functional teams** and **sustainable pace** reduce people-related risks.
- **Incremental funding** limits financial exposure.
- In hybrid projects, maintain an integrated risk register across predictive and adaptive components, and watch the **interfaces** between them.

%%QUESTIONS%%
@@
A risk has a 25% probability of causing a $80,000 loss. An opportunity has a 40% probability of producing a $30,000 saving. What is the combined expected monetary value?
A) −$8,000
B) −$20,000
C) +$12,000
D) −$32,000
= A
? EMV of the threat = 0.25 × −80,000 = −20,000. EMV of the opportunity = 0.40 × 30,000 = +12,000. Net = −$8,000.

@@
The project team buys insurance against fire damage to the construction site. Which risk response strategy is this?
A) Transfer
B) Mitigate
C) Avoid
D) Accept
= A
? Insurance transfers the financial impact to a third party in exchange for a premium. The risk itself is not eliminated.

@@
A team assigns its most experienced engineers to a module to make sure it is completed early, guaranteeing a client bonus. Which opportunity strategy is this?
A) Exploit
B) Enhance
C) Share
D) Accept
= A
? Exploiting an opportunity aims to make it certain to happen. Enhancing only increases probability or impact.

@@
A risk trigger for a previously identified risk has occurred. What should the project manager do?
A) Ensure the risk owner implements the planned contingency response
B) Begin identifying risks for the first time
C) Perform a new Monte Carlo simulation of the whole project before doing anything else
D) Close the risk in the register
= A
? When a trigger occurs, the planned contingency response is executed by the risk owner. The register and reports are then updated.

@@
An unexpected problem occurs that was never identified as a risk. The team applies an unplanned fix to keep working. What is this fix called?
A) A workaround
B) A contingency plan
C) A fallback plan
D) Risk mitigation
= A
? A workaround is an unplanned response to an event or issue that occurs. Contingency and fallback plans are prepared in advance.

@@
Which technique would best show which uncertain variables have the greatest effect on the project's total cost?
A) Sensitivity analysis displayed as a tornado diagram
B) A probability and impact matrix of the individual risks
C) Risk breakdown structure
D) Checklist analysis
= A
? Sensitivity analysis shows the relative impact of each uncertain variable; the tornado diagram displays the largest effects at the top.

@@
The project team identifies a risk that a new government policy could reduce the organisation's overall market share — far beyond the project's objectives. What should the project manager do?
A) Escalate the risk to the appropriate owner in the organisation
B) Mitigate the risk using the project's own contingency reserve and resources
C) Accept the risk passively and ignore it
D) Transfer it by buying insurance
= A
? Risks outside the project's scope or authority should be escalated to the program, portfolio or relevant business owner, who takes ownership.

@@
After implementing a response to reduce the chance of a server failure, a small chance of failure remains. What is this remaining risk called?
A) Residual risk
B) Secondary risk
C) Trigger
D) Issue
= A
? Residual risk remains after responses have been implemented. Secondary risk is a new risk created by the response itself.

@@
Option X has an initial cost of $100,000 and a 30% chance of an additional $50,000 cost. Option Y has an initial cost of $110,000 and a 20% chance of an additional $20,000 cost. Based on expected cost, which option should be chosen?
A) Option Y, expected cost $114,000
B) Option X, expected cost $115,000
C) Option X, expected cost $100,000
D) Option Y, expected cost $130,000
= A
? X: 100,000 + 0.3 × 50,000 = $115,000. Y: 110,000 + 0.2 × 20,000 = $114,000. Y has the lower expected cost.

@@ | multi
Which two practices help manage risk in adaptive projects? (Choose two.)
A) Including risk response activities in the backlog and prioritising them with features
B) Using timeboxed spikes to reduce technical uncertainty
C) Freezing the backlog for the whole release
D) Postponing all risk discussions to the final retrospective
E) Eliminating demonstrations to save time
= A, B
? A risk-adjusted backlog and spikes reduce uncertainty early. Freezing the backlog, postponing risk discussion and eliminating demos increase risk.

@@
What is the main purpose of a risk audit?
A) To evaluate how effective the risk process and responses are
B) To identify every possible risk on the project for the first time, with the auditors
C) To calculate the project's critical path
D) To transfer risks to the auditor
= A
? Risk audits assess whether risk processes and responses are working. Identification and reassessment happen in other activities.

@@
Which statement best describes risk appetite and risk threshold?
A) Appetite is the uncertainty accepted for reward; thresholds are measurable limits reflecting it
B) They are identical terms
C) Thresholds are set by the team alone without any stakeholder input, and the organisation's appetite is irrelevant
D) Appetite applies only to opportunities and thresholds only to threats
= A
? Appetite is a general willingness to take risk, and thresholds translate it into measurable limits, such as "no more than 5% cost variance".

@@
A Monte Carlo simulation shows a 50% probability of finishing by 1 May and an 85% probability of finishing by 20 May. The sponsor wants high confidence. What should the project manager communicate?
A) A target near 20 May gives 85% confidence; 1 May leaves a 50% chance of being late
B) The project will certainly finish on 1 May
C) The simulation is irrelevant because it is probabilistic
D) The schedule must be crashed or fast-tracked until the 1 May date has a confidence level of 100%
= A
? Simulation results give confidence levels for dates. Communicating the probability helps stakeholders choose a target that matches their risk appetite.

@@
In the Eighth Edition, which process covers both qualitative and quantitative risk analysis?
A) Perform Risk Analysis
B) Identify Risks
C) Monitor Risks
D) Plan Risk Management
= A
? The Sixth Edition's two analysis processes were merged into Perform Risk Analysis.
