# Chapter 10 — Schedule Performance Domain

**After this chapter you should be able to:**
- describe the three Schedule processes and the schedule management plan;
- define activities, sequence them with dependencies, leads and lags, and estimate durations (including PERT);
- calculate the critical path, total float and free float with forward and backward passes;
- choose between crashing, fast tracking, resource levelling and resource smoothing;
- plan and track schedules in adaptive work (release planning, velocity, burn charts, flow metrics).

## 10.1 What the Schedule domain covers

The Schedule domain addresses **planning, developing and controlling the timing of the work** so the project delivers its outcomes when they are needed. It has three processes:

| Process | Focus area | Purpose |
|---|---|---|
| **Plan Schedule Management** | Planning | Establish policies, procedures and documentation for planning, developing, managing, executing and controlling the schedule |
| **Develop Schedule** | Planning | Define activities, sequence them, estimate durations and resources, and build the schedule model and baseline (or release/iteration plans) |
| **Monitor and Control Schedule** | Monitoring and Controlling | Monitor status, manage changes to the schedule baseline, forecast completion |

## 10.2 Plan Schedule Management

The **schedule management plan** specifies: the scheduling methodology and tool; schedule model development and maintenance; level of accuracy (rounding of durations, contingency); **units of measure** (hours, days, story points); **organisational procedure links** (WBS framework); **control thresholds** (e.g., ±10% variance before action); **rules of performance measurement** (EVM rules, % complete methods); reporting formats; release and iteration lengths for adaptive work.

## 10.3 Develop Schedule — step by step

### Step 1: Define activities

Decompose **work packages** into **activities** (the work needed to produce the deliverables). Outputs: **activity list**, **activity attributes** (ID, description, predecessors, successors, lead/lag, resources, constraints, location), **milestone list** (milestones have **zero duration** — they mark significant points or events). Use **rolling wave planning** for later work.

### Step 2: Sequence activities — the precedence diagramming method (PDM)

PDM uses **activity-on-node (AON)** diagrams with four relationship types:

| Relationship | Meaning | Example | Frequency |
|---|---|---|---|
| **Finish-to-start (FS)** | B cannot start until A finishes | Pour foundation, then build walls | **Most common** |
| **Start-to-start (SS)** | B cannot start until A starts | Start levelling concrete after pouring starts | Common |
| **Finish-to-finish (FF)** | B cannot finish until A finishes | Finish editing after writing finishes | Common |
| **Start-to-finish (SF)** | B cannot finish until A starts | Old security shift cannot end until the new shift starts | **Rare** |

**Dependency types:**

| Type | Description |
|---|---|
| **Mandatory (hard logic)** | Required by contract or inherent in the nature of the work (you can't test code that hasn't been written) |
| **Discretionary (preferred / soft logic)** | Based on best practice or preference; can be changed — **the first candidates for fast tracking** |
| **External** | Involve a relationship with non-project activities (permit from a regulator, vendor delivery) — usually outside the team's control |
| **Internal** | Between project activities, usually within the team's control |

A dependency can be both mandatory and external, etc.

**Leads and lags:**
- **Lead** = the successor can start *before* the predecessor finishes (FS −2 days) — an acceleration.
- **Lag** = a required *delay* between activities (FS +3 days: wait three days for concrete to cure).

### Step 3: Estimate resources and durations

| Technique | How it works | When to use |
|---|---|---|
| **Expert judgment** | Experience of people who did similar work | Always useful |
| **Analogous** (top-down) | Use the actual duration/cost of a similar past project, adjusted | Early, little detail; quick but less accurate |
| **Parametric** | Statistical relationship × quantity (e.g., 2 hours per m² × 500 m²) | When reliable unit rates exist; can be very accurate |
| **Three-point** | Optimistic (O), most likely (M), pessimistic (P) | When uncertainty is significant |
| **Bottom-up** | Estimate each lower-level component and aggregate | When detail is available; most accurate, most time-consuming |
| **Data analysis: alternatives, reserve analysis** | Compare options; add contingency reserves for identified risks | Throughout |
| **Decision-making (e.g., fist of five), Delphi** | Build consensus, reduce bias | Team estimates |

**Three-point formulas**

- **Triangular distribution:** E = (O + M + P) ÷ 3
- **Beta / PERT distribution:** E = (O + 4M + P) ÷ 6
- **Standard deviation (PERT):** σ = (P − O) ÷ 6
- Variance = σ²; for a path, add variances (not standard deviations), then take the square root.

*Example:* O = 4, M = 6, P = 14 days. PERT E = (4 + 24 + 14) ÷ 6 = **7 days**; σ = (14 − 4) ÷ 6 = **1.67 days**. Triangular E = 24 ÷ 3 = 8 days. Range at ±1σ: 5.33 to 8.67 days (≈68% confidence); ±2σ ≈ 95%; ±3σ ≈ 99.7%.

**Remember:** *effort* (person-hours of work) is not *duration* (calendar time). Adding people does not reduce duration linearly (law of diminishing returns, communication overhead — Brooks's law: adding people to a late software project makes it later). **Parkinson's law**: work expands to fill the time available. **Student syndrome**: people start at the last possible moment.

### Step 4: Build the schedule model — critical path method (CPM)

- **Forward pass** → early start (ES) and early finish (EF). Convention used here: ES of the first activity = 0; EF = ES + duration; ES of a successor = the **largest** EF of its predecessors.
- **Backward pass** → late finish (LF) and late start (LS). LF of the last activity = its EF (project end); LS = LF − duration; LF of a predecessor = the **smallest** LS of its successors.
- **Total float (slack)** = LS − ES = LF − EF — how long an activity can be delayed without delaying the **project end date**.
- **Free float** = ES of the earliest successor − EF of the activity — how long it can be delayed without delaying **any successor's early start**.
- **Critical path** = the **longest path** through the network; it determines the shortest possible project duration; activities on it usually have **zero total float** (negative float means the path is already late against a constraint date).
- **Near-critical path** = a path with little float; watch it closely. A project can have more than one critical path — which increases risk.

#### Worked example

| Activity | Duration (days) | Predecessor |
|---|---|---|
| A | 3 | — |
| B | 5 | A |
| C | 2 | A |
| D | 4 | C |
| E | 3 | B, D |

Paths: **A-B-E** = 3 + 5 + 3 = **11**; A-C-D-E = 3 + 2 + 4 + 3 = 12. Critical path = **A-C-D-E (12 days)**.

Forward pass: A (0–3); B (3–8); C (3–5); D (5–9); E starts at max(8, 9) = 9, finishes 12.
Backward pass: E (LS 9, LF 12); B (LF 9, LS 4); D (LF 9, LS 5); C (LF 5, LS 3); A (LF = min(4, 3) = 3, LS 0).
Float: A 0, C 0, D 0, E 0, **B: LS − ES = 4 − 3 = 1 day** (free float of B = ES of E − EF of B = 9 − 8 = 1).

### Step 5: Optimise — resource optimisation and compression

| Technique | What it does | Effect |
|---|---|---|
| **Resource levelling** | Adjusts start and finish dates to balance resource demand with supply (e.g., one specialist can't do two activities at once) | **Can change the critical path and lengthen the project** |
| **Resource smoothing** | Adjusts activities **within their float** so resource requirements don't exceed limits | Critical path and end date **do not change**; may not optimise all resources |
| **Crashing** | Adds resources (overtime, extra people, faster equipment) to critical-path activities to shorten duration at the **lowest additional cost** | **Increases cost**; works only on critical activities where extra resources help |
| **Fast tracking** | Performs activities in **parallel** that were planned in sequence (usually by changing discretionary dependencies or using leads) | **Increases risk and potential rework**; little or no added cost |

**Crashing logic:** crash the critical activity with the **lowest cost per day saved** first, one day at a time, re-checking the critical path because another path may become critical.

> **Exam tip.** "The sponsor wants the project to finish two weeks early, without increasing the budget" → **fast tracking**. "…without increasing risk, money is available" → **crashing**. Neither helps if applied to non-critical activities.

Other schedule-model tools: **what-if scenario analysis**, **Monte Carlo simulation** (probability distribution of completion dates, e.g., "80% chance of finishing by 30 June"), **agile release planning**, the **critical chain method** (resource-constrained critical path with **buffers**: project buffer at the end of the chain, feeding buffers where non-critical chains join, resource buffers; durations stripped of individual padding).

### Step 6: Present and baseline the schedule

- **Schedule baseline** — the approved version of the schedule model; changed only through change control.
- Presentations: **bar (Gantt) charts** (easy to read, show durations and dates), **milestone charts** (only key dates — good for executives), **project schedule network diagrams** (logic and critical path), **calendars**, **roadmaps**.
- **Schedule data** — milestones, activities, attributes, assumptions, constraints, resource requirements, alternative schedules, contingency reserves.

## 10.4 Scheduling in adaptive projects

| Concept | Description |
|---|---|
| **Timeboxing** | Fixed periods (sprints/iterations of 1–4 weeks, meetings with maximum durations) |
| **Release planning** | Determine features for each release based on the roadmap, priorities and velocity |
| **Iteration (sprint) planning** | The team selects backlog items it can complete in the iteration and plans the work |
| **Story points** | Relative estimates of size/complexity/uncertainty (often Fibonacci: 1, 2, 3, 5, 8, 13, 21) |
| **Planning poker** | Team estimation by simultaneously revealing cards; discuss outliers; re-vote |
| **Affinity estimating / T-shirt sizing** | Quickly group many items by relative size (S, M, L, XL) |
| **Velocity** | Story points completed per iteration; used by **the team** for forecasting — never to compare teams |
| **Capacity** | Available team time in an iteration (holidays, part-time members) |
| **On-demand scheduling (Kanban/pull)** | Work is pulled from the backlog when capacity is available, limited by WIP limits |

**Forecasting with velocity:** remaining backlog ÷ average velocity = number of iterations remaining. *Example:* 240 points remaining ÷ 30 points per sprint = 8 sprints; with 2-week sprints = 16 weeks.

### Tracking charts

- **Burndown chart** — remaining work vs time. A line above the ideal line means behind.
- **Burnup chart** — completed work vs time, plus a total-scope line; shows **scope changes** clearly (the scope line moves up).
- **Cumulative flow diagram (CFD)** — bands of work in each state over time; widening bands show **bottlenecks**; band thickness = WIP; horizontal distance ≈ cycle time.
- **Lead time** = time from request to delivery (customer view). **Cycle time** = time from work start to completion (team view). **Throughput** = items completed per period.
- **Little's Law**: average cycle time = WIP ÷ throughput. *Example:* 12 items in progress, 4 completed per week → cycle time = 3 weeks. To reduce cycle time, **reduce WIP**.

## 10.5 Monitor and Control Schedule

- Determine current status, compare with the baseline (variance analysis), assess trends, forecast completion.
- **Earned value schedule measures**: SV = EV − PV; SPI = EV ÷ PV (see Chapter 11).
- Techniques: performance reviews, trend analysis, **critical path analysis** (is the critical path changing?), what-if analysis, resource optimisation, leads and lags, schedule compression, **iteration burndown** and **velocity trend** in adaptive work.
- Outputs: work performance information, **schedule forecasts**, change requests (to the baseline), updates.
- Agile focus: are we delivering value at a sustainable pace? Retrospectives address impediments; the product owner adjusts scope to meet dates.

> **Trap.** A non-critical activity that is late is not necessarily a problem — check its **float** before taking action. Conversely, a critical activity that slips by one day delays the project by one day unless you recover it.

%%QUESTIONS%%
@@ | fill
An activity has an optimistic estimate of 6 days, a most likely estimate of 9 days and a pessimistic estimate of 18 days. Using PERT (beta distribution), what is the expected duration in days?
= 10
? PERT expected duration = (O + 4M + P) / 6 = (6 + 36 + 18) / 6 = 60 / 6 = 10 days.

@@
Using the same estimates (O = 6, M = 9, P = 18), what is the PERT standard deviation?
A) 2 days
B) 3 days
C) 1.5 days
D) 4 days
= A
? Standard deviation = (P − O) / 6 = (18 − 6) / 6 = 2 days.

@@
The sponsor asks to shorten the project without adding cost, and the team is willing to accept more risk. Which technique should the project manager consider first?
A) Fast tracking critical-path activities
B) Crashing the activities on the critical path
C) Resource smoothing
D) Adding a project buffer
= A
? Fast tracking overlaps activities that were planned in sequence. It adds risk and potential rework but little or no cost. Crashing adds cost; smoothing does not shorten the project.

@@
Which technique adjusts activities within their available float so that resource limits are respected without changing the critical path?
A) Resource smoothing
B) Resource levelling
C) Crashing
D) Fast tracking
= A
? Resource smoothing works only within float, so the end date does not change. Resource levelling may extend the schedule and change the critical path.

@@
Activities: A (4 days, no predecessor), B (6 days, after A), C (3 days, after A), D (5 days, after C), E (2 days, after B and D). What is the length of the critical path?
A) 14 days
B) 12 days
C) 13 days
D) 20 days
= A
? Paths: A-B-E = 4 + 6 + 2 = 12; A-C-D-E = 4 + 3 + 5 + 2 = 14. The longest path, A-C-D-E, is critical at 14 days.

@@
In the same network (A 4, B 6 after A, C 3 after A, D 5 after C, E 2 after B and D), what is the total float of activity B?
A) 2 days
B) 0 days
C) 1 day
D) 4 days
= A
? B can start at day 4 and finish at day 10. E cannot start before day 12 (after D). B's late finish is 12, late start 6, so total float = 6 − 4 = 2 days.

@@
Testing cannot start until the code is written. What type of dependency is this?
A) Mandatory
B) Discretionary
C) External
D) Start-to-start
= A
? A mandatory (hard logic) dependency is inherent in the nature of the work. Discretionary dependencies reflect preferences and are the usual targets of fast tracking.

@@
A team has 12 work items in progress and completes on average 3 items per week. Using Little's Law, what is the average cycle time?
A) 4 weeks
B) 3 weeks
C) 36 weeks
D) 0.25 weeks
= A
? Cycle time = WIP / throughput = 12 / 3 = 4 weeks. Reducing WIP is the most direct way to reduce cycle time.

@@
A product backlog contains 300 story points of remaining work. The team's average velocity is 25 points per two-week sprint. Approximately how long will it take to complete the backlog?
A) 24 weeks
B) 12 weeks
C) 15 weeks
D) 30 weeks
= A
? 300 / 25 = 12 sprints; 12 sprints × 2 weeks = 24 weeks, assuming velocity and scope remain stable.

@@
Which chart makes scope increases most visible to stakeholders in an agile project?
A) Burnup chart with a total-scope line
B) Burndown chart without a scope line
C) Milestone chart
D) A histogram of defects found per sprint
= A
? A burnup chart shows completed work against a separate total-scope line, so additions to scope are visible as the scope line rises.

@@
A manager wants to compare the productivity of two Scrum teams using their velocities. What should the project manager advise?
A) Velocity is team-specific and should not be used to compare teams
B) Compare them directly; the higher velocity indicates the better team
C) Normalise both to hours and rank the developers
D) Ask the teams to double their velocity
= A
? Story points are relative to each team, so velocities are not comparable. Using velocity for comparison encourages point inflation and undermines trust.

@@ | multi
Which two statements about the critical path are correct? (Choose two.)
A) It is the longest path through the schedule network
B) Activities on it usually have zero total float
C) It is the path with the most activities
D) It never changes once the baseline is approved
E) It is the shortest path through the network
= A, B
? The critical path is the longest path and determines the shortest project duration; its activities normally have zero float. It can change during the project as activities are delayed or completed.

@@
A cumulative flow diagram shows the "Testing" band growing wider each week while "Done" grows slowly. What does this indicate?
A) A bottleneck in testing
B) The team is increasing its velocity
C) Scope is decreasing
D) Testing has no work in progress
= A
? A widening band means work is accumulating in that state faster than it leaves it, indicating a bottleneck that limits flow.

@@
Which relationship type is the least commonly used in precedence diagramming?
A) Start-to-finish
B) Finish-to-start
C) Start-to-start
D) Finish-to-finish
= A
? Finish-to-start is the most common; start-to-finish is rarely used, for example in shift handovers.
