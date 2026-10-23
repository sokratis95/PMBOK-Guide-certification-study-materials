# Chapter 5 — Life Cycles and Development Approaches

**After this chapter you should be able to:**
- distinguish project life cycle, product life cycle, phases and phase gates;
- compare predictive, iterative, incremental, adaptive and hybrid approaches;
- select a development approach using product, project and organisational factors;
- recognise common hybrid patterns and delivery cadences in exam scenarios.

## 5.1 Key definitions

| Term | Meaning |
|---|---|
| **Project life cycle** | The series of phases a project passes through from start to completion (e.g., feasibility → design → build → test → deploy → close). |
| **Phase** | A collection of logically related activities that culminates in the completion of one or more deliverables. |
| **Phase gate** (also stage gate, kill point, phase review, decision gate) | A review at the end of a phase where performance and documents (e.g., the business case) are assessed and a decision is made: **continue, continue with modifications, repeat the phase, or end the project/program**. |
| **Product life cycle** | The series of phases that represents the evolution of a product from concept through delivery, growth, maturity and retirement. A product life cycle may contain many projects. |
| **Development approach** | The method used to create and evolve the product, service or result (predictive, iterative, incremental, adaptive, hybrid). |
| **Delivery cadence** | The timing and frequency of deliveries: single delivery, multiple deliveries, periodic deliveries, or continuous delivery. |

## 5.2 The spectrum of development approaches

Think of development approaches as a **continuum** from predictive to adaptive, not as two boxes.

| | **Predictive** (plan-driven, "waterfall") | **Iterative** | **Incremental** | **Adaptive / agile** |
|---|---|---|---|---|
| Requirements | Defined up front and stable | Refined through repeated cycles (prototypes, feedback) | Defined for each increment | Elaborated frequently during delivery |
| Activities | Performed once for the whole project, in sequence | Repeated until correct | Performed once per increment | Repeated in short cycles (iterations/sprints) or continuous flow |
| Delivery | Single final delivery | Usually single final delivery (after iterations improve the solution) | Frequent smaller deliverables | Frequent, small, customer-valued increments |
| Change | Constrained as much as possible; managed by change control | Incorporated at periodic intervals | Incorporated at increment boundaries | Welcomed; incorporated in real time via the backlog |
| Stakeholder involvement | At specific milestones | Regular feedback on iterations | Regular, at each increment | Continuous |
| Risk and cost control | Detailed planning of mostly known considerations | Progressive elaboration with new information | — | Controlled as requirements and constraints emerge |
| Best when | Requirements are clear, technology is known, regulations demand documentation, changes are expensive (construction, manufacturing) | Complexity is high, frequent changes are expected, feedback improves the solution | Customers benefit from early partial value | High uncertainty, rapid change, innovative products, fast feedback is possible |

- **Iterative** = improve the product through repeated cycles (e.g., prototype → feedback → refine). Optimises for *learning*.
- **Incremental** = deliver the product in usable pieces that add up (e.g., release module 1, then module 2). Optimises for *speed of delivery*.
- **Agile** approaches are both iterative *and* incremental.

> **Trap.** "Waterfall" does not mean "no change". Predictive projects handle change through **integrated change control**. Adaptive projects do not mean "no planning" — planning happens continuously and at several levels (vision, roadmap, release, iteration, daily).

### Hybrid approaches

A **hybrid** approach combines predictive and adaptive elements. Common patterns:

1. **Agile development followed by predictive rollout** — software built in sprints, then a planned, phased deployment across 40 branches.
2. **Predictive project with adaptive components** — a construction project uses agile sprints for the building-management software.
3. **Mostly agile with a predictive component** — the product is built iteratively, but a regulatory submission follows a fixed, documented sequence.
4. **Phase-gated governance with agile delivery** — funding and governance use stage gates; work inside each stage is delivered in sprints.
5. **Iterative design, predictive build** — prototypes and user research early, then a plan-driven build.

> **Exam tip.** In hybrid scenarios, look for the answer that applies the *right* mechanism to the *right* part: change control for the baselined predictive component, backlog refinement for the adaptive component, and integrated reporting across both.

## 5.3 Delivery cadence

| Cadence | Example |
|---|---|
| **Single delivery** | A bridge opened at the end of the project |
| **Multiple deliveries** | A regulatory programme delivering separate submissions at different times |
| **Periodic deliveries** | A fixed release every month or every quarter |
| **Continuous delivery** | Features released to users as soon as they are ready (DevOps pipelines) |

## 5.4 Choosing a development approach

The Guide groups the considerations into three families:

**1. Product, service or result**
- *Degree of innovation* — novel products favour adaptive; well-understood products favour predictive.
- *Requirements certainty* — clear and stable → predictive; uncertain → adaptive.
- *Scope stability* — stable scope → predictive.
- *Ease of change* — if changes are cheap (software), adaptive works well; if changes are costly (concrete), predictive.
- *Delivery options* — if the product can be delivered in usable pieces, incremental/adaptive is possible.
- *Risk* — high-risk products benefit from incremental learning *or* from rigorous up-front analysis, depending on the nature of the risk.
- *Safety requirements* and *regulations* — strict documentation and verification often push toward predictive (or hybrid).

**2. Project**
- *Stakeholders* — availability of customer/product owner for frequent feedback.
- *Schedule constraints* — the need to deliver something early favours incremental.
- *Funding availability* — uncertain funding favours incremental releases that deliver value early (and can stop).

**3. Organisation**
- *Structure* — hierarchical, bureaucratic organisations often favour predictive; flatter ones support adaptive.
- *Culture* — trust, empowerment and tolerance of experimentation support adaptive.
- *Capability* — experience with agile, availability of coaches.
- *Team size and location* — adaptive approaches work best with small (often 3–9 people), dedicated, co-located or well-connected teams.

### Helpful models

**Stacey matrix** (agreement vs certainty):

| | Requirements agreed and clear | Requirements far from agreement |
|---|---|---|
| **Technology certain** | *Simple* → predictive | *Complicated* (political) |
| **Technology uncertain** | *Complicated* (technical) | *Complex* → adaptive; far corner = *chaotic* |

**Cynefin framework**: *clear* (best practice; sense–categorise–respond), *complicated* (good practice via experts; sense–analyse–respond), *complex* (emergent practice; probe–sense–respond — use experiments and agile), *chaotic* (novel practice; act–sense–respond — stabilise first), and *confusion* (not yet known which domain applies).

**Agile suitability filter** (from the *Agile Practice Guide*): assess **culture** (buy-in, trust in the team, decision-making powers), **team** (size, experience, access to the customer/business) and **project** (likelihood of change, criticality of the product, possibility of incremental delivery). Results fall in the agile, hybrid or predictive zones.

## 5.5 Life cycles in practice — examples

| Situation | Suitable approach | Why |
|---|---|---|
| Building a hospital wing | Predictive (with hybrid elements for IT systems) | Scope is defined by design drawings; changes after construction starts are very expensive; regulations require inspections |
| Developing a new mobile app for an uncertain market | Adaptive | High uncertainty; frequent feedback; low cost of change |
| Implementing an ERP package in 30 countries | Hybrid | Configuration can be iterative; data migration, training and go-lives are planned and phased |
| Running a one-off international conference | Predictive with iterative elements | Fixed date; marketing campaigns can be iterated |
| Developing a new drug | Predictive, phase-gated | Clinical trial phases and regulatory approvals require strict sequence and documentation |

## 5.6 Planning in each approach

| Level | Predictive | Adaptive |
|---|---|---|
| Strategic | Business case, charter | Product vision, roadmap |
| Overall plan | Integrated project management plan with baselines | Release plan (features targeted per release) |
| Detailed plan | Detailed schedule, rolling-wave refinement of later work | Iteration (sprint) plan, created by the team |
| Daily | Status updates against schedule | Daily stand-up (daily scrum) |

**Rolling wave planning** — plan the near term in detail and the far term at a higher level, refining as information emerges — is a form of progressive elaboration used in predictive and hybrid projects.

%%QUESTIONS%%
@@
A team builds a prototype, gathers user feedback, refines the prototype, and repeats until the design is approved. The final product is delivered once. Which approach is this?
A) Iterative
B) Incremental
C) Predictive
D) Continuous delivery
= A
? Repeated cycles that improve the same solution through feedback describe an iterative approach. Incremental delivers usable pieces over time; predictive plans once and builds once.

@@
A software product is delivered as module 1 in March, module 2 in June and module 3 in September; each module is usable on its own. Which term best describes this?
A) Incremental delivery
B) Iterative development with a single delivery
C) Predictive single delivery
D) Phase gate review
= A
? Delivering usable portions of the product over time is incremental. Agile approaches combine incremental delivery with iterative refinement.

@@
At the end of the design phase, the steering committee reviews performance and the business case and decides whether the project should continue. What is this review called?
A) A phase gate
B) A sprint review
C) A retrospective
D) A risk audit
= A
? A phase gate (stage gate, kill point) is a decision point at the end of a phase. The decision can be to continue, continue with modifications, repeat the phase or end the project.

@@
Which project characteristic most strongly favours a predictive approach?
A) Well-understood requirements, and changes after construction starts are very expensive
B) The market is very uncertain, and frequent customer feedback is essential to shape the product
C) The product can be released in small usable increments
D) The team is small, co-located and experienced in Scrum
= A
? Stable, clear requirements and a high cost of change favour planning up front. The other characteristics favour adaptive approaches.

@@
A bank is developing a new loan application. The user interface will be built in two-week sprints, while the integration with the core banking system must follow a fixed, documented and audited sequence. Which approach fits best?
A) Hybrid
B) Pure predictive
C) Pure adaptive
D) Kanban only
= A
? Combining adaptive delivery for the uncertain UI with a predictive approach for the regulated, sequential integration is a hybrid approach.

@@
In the Cynefin framework, which response pattern is recommended for complex situations?
A) Probe, sense, respond — run safe-to-fail experiments and adapt
B) Sense, categorise, respond — apply the established best practice for the situation
C) Sense, analyse, respond — ask experts
D) Act, sense, respond — stabilise first
= A
? Complex situations have emergent cause and effect, so experimentation and feedback (as in agile) are appropriate. Best practice suits clear situations, expert analysis suits complicated ones, and acting first suits chaos.

@@ | multi
Which two factors should be assessed when using the agile suitability filter? (Choose two.)
A) The team's access to the customer or business representative
B) The likelihood of change in the project
C) The number of pages in the contract
D) The colour coding of the status report
E) The project manager's years since certification
= A, B
? The filter assesses culture (buy-in, trust, decision-making), team (size, experience, access to the business) and project factors (likelihood of change, criticality, incremental delivery).

@@
Which statement about predictive approaches is correct?
A) Changes are possible but go through formal change control against the baselines
B) Changes are not permitted once the plan is approved
C) Planning happens only during the first week
D) Stakeholders are involved continuously in every iteration, so changes never need approval
= A
? Predictive approaches constrain change through baselines and change control, but changes still occur and are evaluated formally.

@@
A project manager plans the next three months in detail and later phases only at milestone level, adding detail as the project progresses. What technique is this?
A) Rolling wave planning
B) Fast tracking
C) Crashing
D) Resource levelling
= A
? Rolling wave planning is a form of progressive elaboration: near-term work is planned in detail, future work at a higher level.

@@
A company releases new features to users several times a day using an automated pipeline. Which delivery cadence is this?
A) Continuous delivery
B) Single delivery
C) Periodic delivery
D) Multiple deliveries at fixed contractual dates
= A
? Releasing features as soon as they are ready through automation is continuous delivery, typical of DevOps environments.

@@
On the Stacey matrix, where both requirements agreement and technology certainty are high, which approach is usually appropriate?
A) Predictive
B) Adaptive
C) Chaotic response
D) Experimental probing
= A
? High agreement and high certainty represent a simple situation in which detailed up-front planning works well.

@@
Which planning artifact is the adaptive equivalent of a high-level schedule that shows which features are targeted for upcoming releases?
A) Release plan or product roadmap
B) Sprint retrospective notes
C) Work breakdown structure dictionary
D) Risk register
= A
? Roadmaps and release plans show features over time at a high level; iteration plans then add detail for each sprint.
