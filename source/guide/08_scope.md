# Chapter 8 — Scope Performance Domain

**After this chapter you should be able to:**
- explain the six Scope processes and their key outputs;
- elicit, analyse, prioritise and trace requirements;
- build a WBS (scope structure) and a product backlog, and know when each is appropriate;
- distinguish validating scope from controlling quality, and scope creep from gold plating;
- manage scope in predictive, adaptive and hybrid projects.

## 8.1 What the Scope domain covers

The Scope domain addresses **defining, structuring, validating and controlling the work and the deliverables** required to achieve the project's objectives — and in the Eighth Edition it also carries **quality planning** (in *Define Scope*) and **quality control** (in *Monitor and Control Scope*).

Two kinds of scope:

| **Product scope** | **Project scope** |
|---|---|
| The features and functions that characterise the product, service or result | The work performed to deliver the product with the specified features and functions |
| Measured against the **requirements** | Measured against the **project management plan** (scope baseline) |

**Desired outcomes:** stakeholders share an understanding of what will be delivered; requirements are clear, prioritised and traceable; deliverables meet acceptance criteria; scope changes are controlled; delivered scope produces the expected value.

## 8.2 Plan Scope Management *(Planning)*

Creates the **scope management plan** (how scope will be defined, structured, validated and controlled; how the WBS/backlog will be created and maintained; how formal acceptance will be obtained) and the **requirements management plan** (how requirements will be elicited, analysed, documented, prioritised, traced, and how changes to them are handled; configuration management of requirements).

## 8.3 Elicit and Analyze Requirements *(Planning)*

**Purpose:** determine, document and manage stakeholder needs and requirements. (Formerly *Collect Requirements*; the new name emphasises that requirements are *drawn out* and *analysed*, not just collected.)

### Types of requirements

| Type | Description | Example |
|---|---|---|
| **Business** | Higher-level needs of the organisation | "Reduce customer churn by 10%" |
| **Stakeholder** | Needs of a stakeholder or group | "Branch managers need a weekly churn report" |
| **Solution — functional** | Behaviours of the product | "The system sends a renewal reminder 30 days before expiry" |
| **Solution — non-functional** | Environmental conditions or qualities (performance, security, usability, reliability, sustainability) | "Pages load in under 2 seconds for 10,000 users" |
| **Transition and readiness** | Temporary capabilities to move from current to future state | Data conversion, training |
| **Project** | Actions, processes or conditions the project must meet | Milestone dates, contractual obligations |
| **Quality** | Conditions or criteria for successful completion of a deliverable | Test coverage, acceptance thresholds |

### Elicitation techniques

| Technique | Best for |
|---|---|
| **Interviews** | Confidential or detailed information from individuals and experts |
| **Focus groups** | Prequalified stakeholders and SMEs discussing expectations of a product |
| **Facilitated workshops** (e.g., **JAD** in software, **QFD** / *voice of the customer* in manufacturing) | Cross-functional sessions that define requirements quickly and reconcile differences |
| **Questionnaires and surveys** | Large, dispersed audiences; quick statistics |
| **Brainstorming** | Generating many ideas |
| **Benchmarking** | Comparing with best-in-class practices |
| **Observation / job shadowing** | When people struggle to articulate their needs |
| **Prototypes, wireframes, storyboards** | Getting early feedback on a tangible model |
| **Document analysis** | Existing contracts, regulations, process descriptions |
| **Context diagrams** | Showing the system's scope, inputs, outputs and actors |
| **Affinity diagrams, mind mapping** | Grouping ideas into themes |
| **Nominal group technique** | Brainstorming followed by ranking/voting |
| **Story mapping** (adaptive) | Arranging user stories along the user journey and by release |

### Prioritisation techniques

- **MoSCoW** — Must have, Should have, Could have, Won't have (this time).
- **Kano model** — basic (must-be), performance (one-dimensional), excitement (delighters), indifferent and reverse features. Over time delighters become expected.
- **Cost of delay / WSJF** (weighted shortest job first = cost of delay ÷ job size).
- **100-point method**, **paired comparison**, **multicriteria weighting**.

### Requirements traceability matrix (RTM)

A grid linking each requirement to its **origin** (business need, objective) and forward to the **deliverables, design, tests and acceptance**. It ensures each requirement adds business value and is delivered and tested, and helps assess the impact of changes.

> **Exam tip.** If stakeholders disagree about requirements, the best first move is usually to **facilitate a workshop** to reach agreement — not to choose the requirement of the most senior stakeholder, and not to add everything.

## 8.4 Define Scope *(Planning)*

**Purpose:** develop a detailed description of the project and product — what is included and what is **excluded** — and (in the Eighth Edition) plan how quality will be achieved and verified.

**Project scope statement** contents:
- product scope description (progressively elaborated);
- **deliverables**;
- **acceptance criteria** (conditions that must be met before deliverables are accepted);
- **project exclusions** (what is out of scope — prevents misunderstandings);
- **constraints** and **assumptions** (also in the assumption log).

Techniques: expert judgment, **product analysis** (product breakdown, systems analysis, value engineering, requirements analysis), **alternatives analysis**, multicriteria decision analysis, facilitation.

**Quality planning within Define Scope:** identify quality requirements and standards, define **quality metrics** (what is measured and the tolerance), prepare the **quality management plan** elements, plan **cost of quality** trade-offs, design test and evaluation approaches. See Chapter 9.

## 8.5 Develop Scope Structure *(Planning)*

**Purpose:** subdivide deliverables and work into smaller, more manageable components. In predictive projects the classic structure is the **work breakdown structure (WBS)**; in adaptive projects it is a **product backlog** organised into themes, epics, features and user stories (often visualised as a story map).

### WBS essentials

- **Deliverable-oriented** hierarchical decomposition of the **total scope** of work.
- **100% rule**: the WBS includes all the work — and only the work — of the project, including project management work. The sum of the children equals the parent.
- **Work package**: the lowest level of the WBS, for which cost and duration can be estimated and managed. (A common heuristic is the 8/80 rule: between 8 and 80 hours of effort.)
- **Control account**: a management control point where scope, budget and schedule are integrated and compared with earned value; contains one or more work packages.
- **Planning package**: below a control account, with known work content but not yet detailed activities (supports rolling wave planning).
- **Code of accounts**: unique identifiers for each WBS element (e.g., 1.2.3).
- Decomposition can be organised by **phases**, **major deliverables**, subcomponents, or organisational units; different branches may be decomposed to different levels.
- Too much decomposition wastes effort; too little loses control.

**WBS dictionary**: detailed description of each WBS element — code of account, description of work, assumptions and constraints, responsible organisation, schedule milestones, associated activities, resources required, cost estimates, quality requirements, acceptance criteria, technical references, agreement information.

**Scope baseline** = approved scope statement + WBS + WBS dictionary.

### Product backlog essentials (adaptive)

- An ordered list of everything that might be needed in the product; the single source of work for the team.
- Owned and ordered by the **product owner**, by value, risk, dependencies and learning.
- Items near the top are small and detailed ("ready"); items further down are larger and less detailed (**epics** to be split later) — the backlog is **progressively elaborated** through **backlog refinement**.
- **User story** format: *"As a <role>, I want <capability>, so that <benefit>."* Good stories are **INVEST**: Independent, Negotiable, Valuable, Estimable, Small, Testable. A story has the **3 Cs**: Card, Conversation, Confirmation (acceptance criteria).
- **Definition of ready (DoR)**: conditions a backlog item must meet before the team pulls it into a sprint.
- **Definition of done (DoD)**: shared quality criteria that every increment must meet (coded, tested, reviewed, documented, deployable…). **Acceptance criteria** are specific to each story; the **DoD** applies to all.
- **MVP** (minimum viable product): the smallest product that lets you learn whether the solution delivers value. **MMF** (minimum marketable feature): the smallest piece of functionality that delivers value to users.

## 8.6 Validate Scope *(Monitoring and Controlling)*

**Purpose:** **formalise acceptance** of completed deliverables by the customer or sponsor.

- Input: **verified deliverables** (deliverables that passed quality control).
- Technique: **inspection** with the customer (reviews, walkthroughs, demonstrations), decision-making (voting).
- Output: **accepted deliverables** (signed off), change requests for those not accepted, work performance information.
- Performed periodically throughout the project — at the end of each phase or major deliverable, not just once.
- In adaptive projects, the **sprint review** (demonstration to stakeholders) and the product owner's acceptance of stories against acceptance criteria serve this purpose.

| **Quality control** (part of Monitor and Control Scope) | **Validate Scope** |
|---|---|
| Checks **correctness** — does the deliverable meet the quality requirements? | Checks **acceptance** — does the customer formally accept it? |
| Usually performed by the team/quality staff, **first** | Performed with the customer/sponsor, **after** quality control |
| Output: **verified** deliverables | Output: **accepted** deliverables |

## 8.7 Monitor and Control Scope *(Monitoring and Controlling)*

**Purpose:** monitor the status of project and product scope, manage changes to the scope baseline, and — in the Eighth Edition — **control quality** of deliverables.

- **Variance analysis**: compare actual scope delivered with the baseline; determine cause and degree of difference.
- **Trend analysis**: is performance improving or deteriorating?
- **Quality control**: inspection, testing, statistical sampling, control charts, checklists — producing **quality control measurements** and **verified deliverables**.
- Outputs: work performance information, change requests, updates.

### Scope creep vs gold plating

| **Scope creep** | **Gold plating** |
|---|---|
| Uncontrolled expansion of scope **without adjustments** to time, cost and resources — often driven by customer or stakeholder requests | The **team** adds extra features or quality beyond what was required, on its own initiative, often to impress the customer |
| Prevent with clear scope statements, exclusions, change control, backlog discipline | Prevent with clear acceptance criteria, DoD, culture of delivering exactly what is valued |

Both are undesirable. Gold plating increases cost and risk, and may introduce defects, without agreed value.

## 8.8 Scope in hybrid projects

- Use a **WBS for the overall structure** (phases, major deliverables, predictive components) and **backlogs** for the adaptive components — for example, the WBS element "Customer portal" is delivered through a backlog of user stories.
- Keep **one source of truth for each component** and a traceability link between requirements, backlog items and contractual deliverables.
- The **scope baseline** may define *outcomes and capacity* (e.g., "a portal meeting these objectives within six sprints") while detailed features remain flexible.

%%QUESTIONS%%
@@
What does the 100% rule state for a WBS?
A) The WBS includes all of the project's work, and only that work
B) Each work package must take exactly 100 hours
C) The WBS must be 100% complete before the project charter can be approved by the sponsor
D) Every deliverable must have 100% test coverage
= A
? The 100% rule means the total of the work at the lowest levels rolls up to the total scope of the project, with nothing missing and nothing extra.

@@
What is the lowest level of the WBS at which cost and duration can be reliably estimated and managed?
A) Work package
B) Control account
C) Planning package
D) Activity
= A
? Work packages are the lowest level of the WBS. Activities are decomposed from work packages in schedule development and are not part of the WBS itself.

@@
A deliverable has passed internal testing. The project manager now meets the customer to review it and obtain sign-off. Which process is being performed?
A) Validate Scope
B) Monitor and Control Scope
C) Manage Quality Assurance
D) Define Scope
= A
? Validate Scope takes verified deliverables (which passed quality control) and obtains formal acceptance from the customer or sponsor.

@@
A developer adds an animation the customer never asked for because "they will love it". This is an example of:
A) Gold plating
B) Scope creep
C) Progressive elaboration
D) A preventive action
= A
? Gold plating is the team adding unrequested features on its own initiative. Scope creep is uncontrolled expansion, often from customer requests, without adjusting time and cost.

@@
Which document links each requirement to its business objective and to the deliverables and tests that satisfy it?
A) Requirements traceability matrix
B) WBS dictionary
C) Stakeholder register
D) Issue log
= A
? The RTM traces requirements backward to their origin and forward to design, deliverables and tests, helping to ensure value and assess change impact.

@@
Two key stakeholders insist on conflicting requirements for the same report. What should the project manager do first?
A) Facilitate a workshop with both stakeholders to reach agreement
B) Implement the requirement of the more senior stakeholder, since seniority decides
C) Implement both versions of the report
D) Remove the report from the scope
= A
? Facilitated workshops reconcile differences and build consensus. Choosing by seniority or doing both ignores value and creates waste.

@@
Which statement correctly distinguishes acceptance criteria from the definition of done?
A) Acceptance criteria are story-specific; the definition of done applies to every item
B) They are identical terms
C) The definition of done is written by the customer for each story; acceptance criteria are team-wide
D) Acceptance criteria apply only to predictive projects
= A
? Acceptance criteria describe what a particular story must do to be accepted. The DoD is a shared checklist of quality conditions that every increment must meet.

@@
Which section of the project scope statement helps most to prevent stakeholders from assuming that certain work is included?
A) Project exclusions
B) Acceptance criteria
C) Product scope description
D) Constraints
= A
? Explicitly stating what is out of scope manages expectations and prevents misunderstandings later.

@@ | multi
Which two characteristics are part of the INVEST criteria for good user stories? (Choose two.)
A) Negotiable
B) Testable
C) Inexpensive
D) Verified by the sponsor
E) Valuable to the project manager only
= A, B
? INVEST stands for Independent, Negotiable, Valuable, Estimable, Small and Testable. Value must be to the user or customer.

@@
"The system shall support 5,000 concurrent users with a response time under two seconds." This is an example of which requirement type?
A) Non-functional requirement
B) Functional requirement
C) Transition requirement
D) Business requirement
= A
? Performance, capacity, security and usability qualities are non-functional requirements. Functional requirements describe behaviours of the product.

@@
In the Kano model, what tends to happen to "excitement" features (delighters) over time?
A) They become expected basic features as customers get used to them
B) They become reverse features that customers actively dislike over time
C) They are removed from the product backlog
D) They always remain delighters
= A
? Delighters lose their novelty and become performance or basic expectations; yesterday's innovation becomes today's standard.

@@
Who orders the product backlog in Scrum?
A) The product owner
B) The scrum master
C) The project sponsor
D) The developers, by technical preference
= A
? The product owner is accountable for maximising value and ordering the backlog, informed by stakeholders and the developers' input on risks and dependencies.

@@
Where is quality control performed in the Eighth Edition process structure?
A) Within Monitor and Control Scope
B) Within Manage Quality Assurance
C) Within Validate Scope
D) Within Plan Scope Management
= A
? Quality control merged into Monitor and Control Scope, producing verified deliverables. Assurance of processes is Manage Quality Assurance in Governance, and formal acceptance is Validate Scope.

@@
A product owner wants to learn quickly whether customers will use a new subscription service before investing in the full solution. What should the team deliver first?
A) A minimum viable product
B) The complete product with all features
C) A detailed WBS dictionary
D) A requirements traceability matrix
= A
? An MVP is the smallest product that validates the key assumption with real users, supporting the principle of focusing on value.
