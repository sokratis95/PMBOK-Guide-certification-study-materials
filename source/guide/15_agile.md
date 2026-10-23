# Chapter 15 — Agile and Hybrid Delivery in Depth

**After this chapter you should be able to:**
- state the four values and twelve principles of the Agile Manifesto and apply them to scenarios;
- explain Scrum roles, events, artifacts and commitments, and the role of a servant leader;
- apply Kanban, Lean and XP practices;
- recognise scaling frameworks and their key ideas;
- estimate, plan, measure and contract in agile and hybrid environments;
- choose the "agile answer" in exam scenarios.

About 60% of PMP questions are agile or hybrid. This chapter collects the concepts most frequently tested.

## 15.1 The Agile Manifesto (2001)

**Four values** — *we value the items on the left more than the items on the right* (the right still has value):

1. **Individuals and interactions** over processes and tools
2. **Working software** (working product) over comprehensive documentation
3. **Customer collaboration** over contract negotiation
4. **Responding to change** over following a plan

**Twelve principles** (paraphrased):

1. Highest priority: satisfy the customer through **early and continuous delivery** of valuable software.
2. **Welcome changing requirements**, even late; harness change for the customer's competitive advantage.
3. **Deliver working software frequently**, from a couple of weeks to a couple of months, preferring the shorter timescale.
4. Business people and developers **work together daily**.
5. Build projects around **motivated individuals**; give them the environment and support they need and **trust** them.
6. **Face-to-face conversation** is the most efficient and effective method of conveying information.
7. **Working software is the primary measure of progress.**
8. Agile processes promote **sustainable development** — a constant pace indefinitely.
9. Continuous attention to **technical excellence and good design** enhances agility.
10. **Simplicity** — the art of maximising the amount of work *not* done — is essential.
11. The best architectures, requirements and designs emerge from **self-organising teams**.
12. At regular intervals the team **reflects** on how to become more effective and adjusts its behaviour.

**Agile mindset:** being agile (values and principles) matters more than doing agile (practices). Agile is an umbrella term for many approaches; **Lean** thinking is a superset that includes agile and Kanban.

## 15.2 Scrum

Scrum is a lightweight framework for developing complex products, based on **empiricism** (transparency, inspection, adaptation) and **lean thinking**. Scrum values: **commitment, focus, openness, respect, courage**.

### Scrum team (accountabilities)

| Role | Accountabilities |
|---|---|
| **Product owner (PO)** | Maximise the value of the product; develop and communicate the **product goal**; create, **order** and clearly communicate **product backlog** items; **accept** or reject work; the single voice of the stakeholders for the team. One person, not a committee |
| **Scrum master (SM)** | **Servant leader** and coach: helps everyone understand Scrum theory and practice; facilitates events as needed; **removes impediments**; shields the team from interruptions; helps the PO with backlog techniques; helps the organisation adopt Scrum |
| **Developers** | Everyone who creates the increment (any discipline); **self-managing**: decide **how** to do the work; create the **sprint backlog**; hold each other accountable; adhere to the **definition of done** |

A Scrum team is typically **10 or fewer** people, cross-functional, with no sub-teams or hierarchies.

### Events (all timeboxed)

| Event | Timebox (for a one-month sprint; shorter for shorter sprints) | Purpose |
|---|---|---|
| **Sprint** | 1 month or less (often 2 weeks); a container for all events | Create a valuable, useful "done" increment. No changes that endanger the **sprint goal**; quality does not decrease; scope may be clarified and renegotiated with the PO |
| **Sprint planning** | Max 8 hours | *Why* (sprint goal), *what* (selected items), *how* (plan) — produces the sprint backlog |
| **Daily scrum** | 15 minutes, same time and place | Developers inspect progress toward the sprint goal and adapt the plan. **Not** a status meeting for the PM. Detailed problem-solving happens after |
| **Sprint review** | Max 4 hours | Inspect the increment with **stakeholders**, gather feedback, adapt the product backlog — a working session, not just a demo |
| **Sprint retrospective** | Max 3 hours | Inspect how the last sprint went (people, interactions, processes, tools, DoD) and plan **improvements**, which may be added to the next sprint backlog |

**Sprint cancellation:** only the **product owner** can cancel a sprint, typically when the sprint goal becomes obsolete.

**Backlog refinement** is an ongoing activity (often ~10% of capacity) to break down, clarify, estimate and order items.

### Artifacts and their commitments

| Artifact | Commitment | Description |
|---|---|---|
| **Product backlog** | **Product goal** | Emergent, ordered list of what is needed to improve the product |
| **Sprint backlog** | **Sprint goal** | Selected items + the plan for delivering them; owned by developers |
| **Increment** | **Definition of done** | A concrete stepping stone toward the product goal; must be usable; multiple increments may be created in a sprint |

## 15.3 Kanban

Kanban (Japanese: "visual signal") is a method for managing flow of work. Core practices:

1. **Visualise the workflow** (Kanban board with columns such as To do / In progress / Review / Done).
2. **Limit work in progress (WIP)** — WIP limits per column create a **pull system** and expose bottlenecks.
3. **Manage flow** — measure and improve **lead time**, **cycle time** and **throughput** (cumulative flow diagrams).
4. **Make policies explicit** (e.g., definition of done per column).
5. **Implement feedback loops** (replenishment meetings, reviews).
6. **Improve collaboratively, evolve experimentally.**

Kanban has **no prescribed roles or iterations**; it starts with what you do now and evolves. It suits support/operations work with continuous incoming requests. **Scrumban** combines Scrum events with Kanban flow and WIP limits.

## 15.4 Lean

Lean thinking (from the Toyota Production System) focuses on **maximising customer value while minimising waste**. Principles: identify value, map the **value stream**, create **flow**, establish **pull**, pursue **perfection** (continuous improvement).

**Seven wastes in software development** (Poppendieck): partially done work, extra features (gold plating), relearning, handoffs, task switching, delays, defects. (Manufacturing equivalents: inventory, overproduction, extra processing, transportation, motion, waiting, defects — plus unused talent.)

**Value stream mapping** — visualise every step from request to delivery, distinguishing value-adding time from waiting time, to eliminate delays and waste.

## 15.5 Extreme Programming (XP)

XP focuses on technical excellence and frequent releases. Practices: **pair programming**, **test-driven development (TDD)** — write the test first (red–green–refactor), **continuous integration**, **refactoring**, **simple design**, **collective code ownership**, **coding standards**, **small releases**, **sustainable pace** (40-hour week), **whole team** (customer on-site), **planning game**, **system metaphor**. XP roles include coach, customer, programmer, tracker, tester. XP values: communication, simplicity, feedback, courage, respect.

## 15.6 Other approaches and scaling frameworks

| Approach | Key ideas |
|---|---|
| **Feature-driven development (FDD)** | Develop an overall model, build a features list, plan/design/build **by feature**; chief programmer, class owners |
| **DSDM** (Dynamic Systems Development Method) | Fixes **time, cost and quality**; scope varies (**MoSCoW**); eight principles; strong governance — popular for agile with corporate rigor |
| **Crystal** | A family of methodologies sized by team size and criticality (Clear, Yellow, Orange, Red…); emphasises people and communication |
| **Disciplined Agile (DA)** | PMI's toolkit for choosing your "way of working" (WoW); context-sensitive; principles such as *delight customers*, *be awesome*, *context counts*, *choice is good*, *optimise flow*, *enterprise awareness* |
| **SAFe® (Scaled Agile Framework)** | Organises many teams into **Agile Release Trains (ARTs)** of 50–125 people; **program increment (PI) planning** (typically every 8–12 weeks); roles such as Release Train Engineer; portfolio, large solution and essential configurations |
| **Scrum of Scrums** | Representatives of each team meet to coordinate dependencies and impediments across teams |
| **LeSS (Large-Scale Scrum)** | Many teams, **one product owner and one product backlog**; minimal extra roles |
| **Nexus** | Scrum.org's framework for 3–9 Scrum teams with a Nexus integration team |
| **Enterprise Scrum / Scrum@Scale** | Scaling Scrum principles to the enterprise |

## 15.7 Estimating and planning in agile

- **Relative estimating** with **story points** (size, complexity, uncertainty) — faster and more consistent than absolute hours.
- **Planning poker** (wideband Delphi): each estimator reveals a card simultaneously; discuss the highest and lowest; re-vote until convergence — avoids anchoring.
- **Affinity estimating** and **T-shirt sizing** for many items or early, coarse estimates.
- **Ideal days**, **#NoEstimates** (count items, use throughput).
- **Velocity** = points completed per iteration (only "done" items count); used to forecast; **not** a performance target.
- **Capacity planning** — adjust for holidays and availability.
- **Levels of planning (the planning onion)**: strategy → portfolio → product (vision, roadmap) → release → iteration → day.
- **Iteration zero / sprint zero** — set-up work (environment, architecture runway, team formation). Use with care: it should still deliver some value.
- **Spike** — a timeboxed research activity to answer a question or reduce risk; an **architectural spike** explores technical approach.

## 15.8 Agile metrics and visual management

| Metric / chart | Use | Caution |
|---|---|---|
| **Velocity** | Forecasting for the team | Not for comparing teams or evaluating individuals |
| **Burndown** | Remaining work in the sprint/release | Hides scope changes |
| **Burnup** | Completed work vs total scope | Shows scope growth |
| **Cumulative flow diagram** | Flow, WIP and bottlenecks | — |
| **Lead time / cycle time / throughput** | Predictability and speed | Reduce WIP to improve |
| **Escaped defects**, **technical debt** | Quality | — |
| **Business value delivered**, **customer satisfaction (NPS)**, **feature usage** | Outcomes | The most important measures |
| **Team happiness / health checks** | Sustainability | — |

**Information radiators** (big visible charts) make these transparent. **Earned value can be adapted** to agile by measuring planned vs completed story points against release budgets.

## 15.9 Servant leadership and the agile project manager

Servant leaders put the needs of the team first. Their behaviours:

- **Remove impediments** (or empower the team to remove them);
- **Shield the team** from interruptions and diversions;
- **Facilitate** collaboration, events and decisions — rather than direct;
- **Coach and mentor**; grow the team's capability; encourage self-organisation;
- **Promote transparency** and **psychological safety**;
- **Communicate the vision** and keep the team focused on value.

The project manager's role in agile environments may be to support the team, coordinate across teams and with the wider organisation, manage budgets and contracts, handle governance, and act as a servant leader — but **not** to assign tasks or make the product owner's decisions.

## 15.10 Agile contracts

Recap from Chapter 7: **fixed-price increments**, **not-to-exceed T&M**, **graduated fixed price**, **early cancellation option** (customer can stop when enough value is delivered, paying a fee), **dynamic scope option** (swap features of equal size), **team augmentation**, **multi-tiered structure** (master service agreement + statements of work for each release), **capacity-based** contracts. The agile value *customer collaboration over contract negotiation* means the contract should enable collaboration, not replace it.

## 15.11 Hybrid delivery — making it work

- Agree on **which parts** of the project use which approach, and why (tailoring).
- Integrate plans: **milestones** from the predictive plan linked to **releases** from the adaptive plan.
- Synchronise at **integration points** (e.g., hardware ready for software integration in sprint 6).
- Use **consistent governance and reporting** (e.g., a combined dashboard: milestone status + burnup + risks).
- Manage **dependencies** between components explicitly (dependency boards, Scrum of Scrums).
- Educate stakeholders about the differences (e.g., why the adaptive scope is flexible while the date is fixed).

## 15.12 The "agile answer" — common exam patterns

| Scenario | Usually the best answer |
|---|---|
| The team is in conflict over a technical approach | Let the team discuss and decide; facilitate if needed |
| A stakeholder asks a developer directly for a new feature | Redirect the request to the **product owner** for the backlog |
| The PO is not available to answer questions | Coach the PO on the importance of availability; agree on time slots; escalate to management only if it persists |
| A team member keeps talking about solutions in the daily scrum | Ask to take the discussion offline after the stand-up |
| Velocity dropped | Explore causes with the team in the **retrospective**; don't push for more points |
| Management wants the team to commit to more work | Explain capacity and velocity; protect sustainable pace; negotiate scope with the PO |
| Defects escaping to production | Strengthen the **definition of done**, automation and TDD; discuss in the retrospective |
| New team just formed | Facilitate a **team charter**/working agreements; coach Scrum practices |
| The team wants to change its process | Support experiments agreed in the retrospective |
| The organisation demands detailed upfront plans for an agile project | Educate on adaptive planning; provide roadmap/release plans and transparency; tailor reporting |

%%QUESTIONS%%
@@
Which statement reflects the Agile Manifesto value "Working software over comprehensive documentation"?
A) Documentation still has value, but delivering a working product is valued more
B) Documentation is forbidden in agile projects
C) Working software is optional, as long as the documentation is complete and approved
D) Only the product owner writes documentation
= A
? The manifesto values items on the left more than those on the right; items on the right still have value. Teams produce documentation that is useful, not documentation for its own sake.

@@
Who is accountable for ordering the product backlog and maximising the value of the product in Scrum?
A) The product owner
B) The scrum master
C) The developers
D) The project manager
= A
? The product owner orders the backlog and maximises value. The scrum master serves the team and the organisation; developers decide how to build the increment.

@@
During the daily scrum, two developers start a detailed technical debate. What should the scrum master do?
A) Suggest they continue after the daily scrum so the event stays focused
B) Decide the technical approach for them
C) Extend the daily scrum until the technical debate has been fully resolved by the two developers
D) Cancel the daily scrum for the rest of the sprint
= A
? The daily scrum is a 15-minute inspection of progress toward the sprint goal. Detailed problem-solving happens afterwards with the people involved.

@@
Who can cancel a sprint in Scrum?
A) The product owner
B) The scrum master
C) Any developer
D) The sponsor, at any time without the product owner
= A
? Only the product owner has the authority to cancel a sprint, usually when the sprint goal becomes obsolete.

@@
In Kanban, what is the main purpose of a work-in-progress (WIP) limit?
A) To create a pull system that improves flow and exposes bottlenecks
B) To ensure that every team member is always busy with at least one work item
C) To fix the length of each iteration
D) To estimate story points
= A
? Limiting WIP reduces multitasking, shortens cycle time and reveals bottlenecks. Keeping everyone busy is not the goal; flow is.

@@
Which XP practice involves writing an automated test before writing the code that makes it pass?
A) Test-driven development
B) Pair programming
C) Continuous integration
D) Refactoring
= A
? TDD follows a red-green-refactor cycle: write a failing test, write code to pass it, then improve the design.

@@
A large organisation coordinates eight agile teams working on one product with one product owner and one product backlog, adding as few extra roles as possible. Which framework does this describe?
A) LeSS
B) Crystal Clear
C) Feature-driven development
D) Kanban
= A
? Large-Scale Scrum (LeSS) scales Scrum with one product owner and one product backlog for many teams and minimal additional roles.

@@ | multi
Which two behaviours are typical of a servant leader? (Choose two.)
A) Removing impediments that block the team
B) Shielding the team from interruptions so they can focus
C) Assigning tasks to each developer every morning
D) Deciding the technical design for the team
E) Reporting individual velocity to managers
= A, B
? Servant leaders remove impediments, protect focus, facilitate and coach. Assigning tasks, deciding designs and reporting individual metrics undermine self-organisation.

@@
Which Lean waste is created when developers frequently switch between several projects at once?
A) Task switching
B) Extra features
C) Handoffs
D) Relearning
= A
? Task switching causes time loss from context changes. Limiting WIP and dedicating people to teams reduce this waste.

@@
In DSDM, which elements are typically fixed while scope varies?
A) Time, cost and quality
B) Scope and cost
C) Scope and time
D) Scope, quality and team
= A
? DSDM fixes time, cost and quality and flexes the scope using MoSCoW prioritisation.

@@
The sprint review is best described as:
A) A working session where stakeholders inspect the increment and adapt the backlog
B) A meeting where the team reflects on its process and agrees improvements for the next sprint
C) A status meeting for the project manager
D) The formal signing of the contract
= A
? The sprint review inspects the product increment with stakeholders and adapts the backlog. The retrospective focuses on process improvement.

@@
During planning poker, estimates for a story range from 2 to 13 points. What should happen next?
A) The lowest and highest estimators explain their reasoning, then the team re-estimates
B) Take the average of all estimates
C) The scrum master chooses the final estimate, since the scrum master facilitates the session
D) Use the highest estimate to be safe
= A
? Discussing outliers surfaces different assumptions and knowledge; the team then votes again to converge.

@@
In a hybrid project, the hardware is delivered predictively and the software in sprints. Which practice best integrates the two?
A) Aligning release plans with hardware milestones at defined integration points
B) Running the two parts with no coordination
C) Forcing the software team to use a detailed Gantt chart for every task, so that both parts look the same
D) Delaying all software work until the hardware is complete
= A
? Hybrid delivery requires explicit synchronisation of milestones and releases, managed dependencies and consistent governance and reporting.

@@
What is the purpose of a spike in agile development?
A) A timeboxed investigation to reduce uncertainty before committing
B) A sudden increase in velocity
C) A defect found in production
D) A short meeting held to celebrate a successful release with the stakeholders
= A
? Spikes are short, timeboxed investigations that answer technical or design questions and reduce risk.
