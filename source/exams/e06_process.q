%% CASE Cartwell checkout replatforming
Cartwell, an online retailer, must replace its checkout and payment system before the holiday peak. Three agile teams build the new checkout in two-week sprints. A vendor is installing new sorting equipment in the main warehouse under a fixed-price contract and a predictive plan.

- **Eight sprints** remain before the code freeze. The release backlog has **480 story points**, and the three teams together complete **50 to 60 points per sprint**.
- Warehouse installation (BAC **$1,200,000**) at week 10: PV **$600,000**, EV **$540,000**, AC **$500,000**.
- In testing, **2% of payments fail**, against a target of 0.5%. A Pareto analysis shows that **70% of the failures** come from timeouts in one payment provider's interface.
- The vendor proposes an upgraded conveyor that would sort 20% faster, for an additional **$80,000**.
@@ PR8 | Agile
What is the most realistic forecast for the release backlog?
A) Between 400 and 480 points, so the backlog should be ordered to protect the most valuable scope
B) All 480 points, since the teams' best sprints show that together they can complete 60 points each sprint
C) Only 320 points, so half of the remaining scope should be removed from the release now
D) All 480 points, provided that the code freeze is moved back by one or two sprints
= A
? Eight sprints at 50–60 points give a range of 400–480 points. Completing everything requires the best case in every sprint, so the product owner orders the backlog so that the most valuable items are done first.

@@ PR6 | Predictive
How is the warehouse installation performing at week 10?
A) CPI 1.08 and SPI 0.90: under budget and behind schedule
B) CPI 0.93 and SPI 1.11: over budget and ahead of schedule
C) CPI 1.08 and SPI 1.11: under budget and ahead of schedule
D) CPI 0.90 and SPI 1.08: over budget and ahead of schedule
= A
? CPI = EV / AC = 540,000 / 500,000 = 1.08 (under budget). SPI = EV / PV = 540,000 / 600,000 = 0.90 (behind schedule).

@@ PR7 | Hybrid
What should the teams do about the payment failures?
A) Address the interface timeouts first, working with the provider on the root cause
B) Spread the effort equally across all causes, so that no type of failure is neglected
C) Raise the target failure rate to 2%, since some payment failures are unavoidable
D) Add a manual check of every payment before peak, so that failures are caught
= A
? The Pareto analysis shows where most failures originate. Fixing the root cause of the largest category gives the biggest improvement; manual inspection does not prevent failures.

@@ PR5 | Hybrid
How should the project handle the vendor's proposal for the upgraded conveyor?
A) Evaluate its benefits, cost and schedule impact and, if worthwhile, agree it through contract change control
B) Accept the proposal at once, since faster sorting will clearly help the warehouse during the holiday peak
C) Reject the proposal, since a fixed-price contract cannot be changed once it has been signed by both parties
D) Ask the vendor to install the upgrade at no extra cost, since the contract price is fixed for the whole scope of work
= A
? Contract changes are assessed on their merits and agreed formally through the contract's change control procedure. Fixed-price contracts can be changed by mutual agreement.
%% END CASE

@@ PR1 | Predictive
Which PMBOK 8 process makes sure that the subsidiary plans are consistent with each other and combined into one project management plan?
A) Integrate and Align Project Plans
B) Initiate Project or Phase
C) Manage Project Execution
D) Monitor and Control Project Performance
= A
? Integrate and Align Project Plans (governance performance domain) brings the subsidiary plans and baselines together into a coherent project management plan.

@@ PR1 | Hybrid
A water utility will install smart meters in 12 districts. Each district can go live on its own once its meters and data links are ready. Which delivery approach fits best?
A) Incremental delivery, with districts going live one by one
B) A single go-live for all 12 districts at the end of the programme
C) Iterative prototyping of the meter hardware in every district
D) Ad hoc delivery whenever installation crews become available
= A
? When parts of the solution can be used independently, incremental delivery provides value and feedback earlier and spreads the risk across the rollout.

@@ PR1 | Predictive
Which document formally authorises the project and gives the project manager the authority to use organisational resources?
A) The project charter
B) The business case
C) The project management plan
D) The statement of work
= A
? The project charter, issued by the sponsor in Initiate Project or Phase, formally authorises the project and the project manager's authority.

@@ PR1 | Agile
Requirements for a new product are highly uncertain, and the technology is new to the organisation. According to the Stacey matrix, which approach fits best?
A) An adaptive approach, since the project is in the complex zone
B) A predictive approach, since the project is in the simple zone
C) A predictive approach with a large contingency reserve
D) No formal approach, since the project is in the chaotic zone
= A
? High uncertainty in both requirements and technology places the work in the complex zone, where adaptive approaches with frequent feedback work best.

@@ PR1 | Hybrid
A new hotel's plan covers construction, hiring and training staff, and installing IT systems. Training must take place in the finished building with working systems. What should the project manager make sure of?
A) The plans are integrated, and the dependencies between them are explicit
B) Each department plans its own part separately, since each one understands its own work best
C) Training starts before construction is complete, so that staff are ready as early as possible
D) Training is planned after opening, since staff will learn faster once guests have arrived
= A
? Integrated planning identifies the dependencies between workstreams so that each one is ready when the others need it.

@@ PR1 | Predictive
Which of the following is a project document rather than a component of the project management plan?
A) The issue log
B) The scope baseline
C) The risk management plan
D) The communications management plan
= A
? The issue log is a project document that is updated frequently. Baselines and subsidiary management plans are components of the project management plan.

@@ PR1 | Agile
The team spends about 20% of each sprint on unplanned production support. How should it plan its sprints?
A) Reserve capacity for support, based on its history, and plan the sprint with the rest
B) Plan the sprint at full capacity and drop stories whenever support work arrives
C) Refuse support requests during the sprint to protect the planned work
D) Ask the product owner to add a "support" story worth 100 points to every sprint as a placeholder
= A
? Planning with realistic capacity, including a known level of interruptions, makes sprint commitments reliable while support needs are still met.

@@ PR1 | Agile
A research team will run a series of experiments. The results of each experiment will determine what is done next. Which planning approach fits best?
A) Iterative planning, with a decision point after each experiment
B) A detailed plan of all of the experiments, fixed at the start to control the budget
C) No planning at all, since the results cannot be predicted
D) A plan prepared by the funder, which the team follows exactly
= A
? Under high uncertainty, plans are developed iteratively. Each experiment's results inform the next decision.

@@ PR2 | Predictive
Where are a work package's detailed description, acceptance criteria and responsible organisation documented?
A) In the WBS dictionary
B) In the project charter
C) In the issue log
D) In the risk register
= A
? The WBS dictionary provides detailed information about each WBS component, such as its description, responsible organisation, acceptance criteria and milestones.

@@ PR2 | Agile
A user story cannot be delivered until two other stories have been completed. Which INVEST characteristic does it lack?
A) Independent
B) Valuable
C) Estimable
D) Small
= A
? INVEST stands for independent, negotiable, valuable, estimable, small and testable. A story that depends on others is not independent, which makes it harder to order and deliver.

@@ PR2 | Hybrid
Front-desk staff find it hard to describe how they check guests in, and they skip steps when explaining it. Which elicitation technique would work best?
A) Observation of the staff at work
B) A questionnaire sent to all staff
C) A review of the hotel's annual report
D) A brainstorming session with the managers
= A
? Observation (job shadowing) reveals how work is really done, including steps that people do not think to mention.

@@ PR2 | Predictive
To prevent misunderstandings about what the project will deliver, what should the project scope statement include in addition to the deliverables?
A) Explicit exclusions that state what is out of scope
B) The names of all of the team members and their roles
C) The detailed schedule of all of the project's activities
D) The full list of the project's risks and their responses
= A
? Exclusions clarify what is not part of the project, which helps manage stakeholders' expectations and prevents scope creep.

@@ PR2 | Agile
What is the difference between the definition of done and acceptance criteria?
A) The definition of done applies to every item, while acceptance criteria are specific to each item
B) The definition of done is written by the customer, while acceptance criteria are written by the team
C) Acceptance criteria apply to the whole product, while the definition of done applies to one story
D) There is no difference, since both terms describe the same list of quality checks
= A
? The definition of done is a shared quality standard for all work. Acceptance criteria describe the conditions a particular item must meet.

@@ PR2 | Predictive
How does checking deliverables for correctness differ from validating scope?
A) Correctness is checked against requirements; validation is formal acceptance
B) Correctness is checked by the customer, while validation is performed by the project team
C) Correctness checks happen only at the end, while validation happens throughout the project
D) They are the same activity, performed under different names by different departments
= A
? Quality control verifies that deliverables meet requirements and is usually done first. Validating scope obtains the customer's or sponsor's formal acceptance of the verified deliverables.

@@ PR2 | Agile | match
Match each type of backlog item with its description.
1) Epic
2) User story
3) Spike
4) Enabler
A) A large body of work that must be broken down
B) A small piece of functionality that is valuable to a user
C) A timeboxed investigation to reduce uncertainty
D) Work that supports future functionality, such as infrastructure
= 1-A, 2-B, 3-C, 4-D
? Backlogs contain several types of items. Epics are split into stories; spikes buy knowledge; enablers prepare the architecture or infrastructure for future features.

@@ PR2 | Predictive
At which point in the WBS are scope, budget and schedule integrated and compared with earned value for performance measurement?
A) The control account
B) The planning package
C) The work package
D) The project charter
= A
? A control account is a management control point that integrates scope, budget and schedule and contains one or more work packages.

@@ PR3 | Agile
The product owner wants to release the smallest set of features that customers would find useful and worth having on its own. What is this called?
A) A minimum marketable feature set
B) A proof of concept of the main feature
C) A timeboxed technical spike
D) A high-level product roadmap
= A
? A minimum marketable feature (or release) is the smallest unit of functionality that delivers real value to customers when released. A proof of concept or spike only tests feasibility.

@@ PR3 | Predictive
Which document describes how and when a project's benefits will be delivered and measured?
A) The benefits management plan
B) The project charter
C) The scope management plan
D) The communications management plan
= A
? The benefits management plan defines the target benefits, metrics, timing, owners and how the benefits will be realised and measured.

@@ PR3 | Hybrid
A research project aims to develop a new material. Several technical uncertainties could stop the project. How should the team order its work to deliver the most value?
A) Run the experiments that address the biggest uncertainties first
B) Start with the easiest experiments to build the team's confidence
C) Run all of the experiments at the same time to save time
D) Follow the order in which the experiments were proposed
= A
? Reducing the largest uncertainties early provides the most valuable information and allows an early decision to change direction or stop.

@@ PR3 | Agile
Before building a loyalty feature, the product owner writes: "We believe this feature will increase repeat purchases by 10%. We will know we are right when the repeat rate rises within two months." What approach is this?
A) Hypothesis-driven development
B) Test-driven development
C) Acceptance test-driven development
D) Behaviour-driven development
= A
? Hypothesis-driven development frames features as experiments with measurable expected outcomes, so that the team can learn whether the work created value.

@@ PR3 | Predictive
The organisation can fund only one of two projects. Project A has an NPV of $200,000, and project B has an NPV of $150,000. If project A is chosen, what is the opportunity cost?
A) $150,000
B) $50,000
C) $200,000
D) $350,000
= A
? Opportunity cost is the value of the best alternative given up. Choosing project A gives up project B's NPV of $150,000.

@@ PR3 | Hybrid
Leakage reduction from smart meters can be measured only once most of a district's meters are installed. How can the programme show value early?
A) Complete districts one at a time, so that results can be measured early
B) Install a few meters in every district at once, so that all areas start equally
C) Wait until all districts are complete before measuring any of the benefits
D) Report the number of meters installed each week as the measure of value
= A
? Completing whole districts first lets the programme measure and demonstrate real benefits early, instead of only reporting outputs.

@@ PR3 | Agile
Marketing wants the hotel chain's new booking engine to launch with many features. The product owner proposes releasing a core booking flow first, so that guests can book directly instead of through agencies that charge commission. Why is this a good approach?
A) It starts capturing value early and lets feedback shape the later features
B) It reduces the total amount of work the team will have to do on the product
C) It avoids the need to involve marketing in the decisions about later features
D) It guarantees that the later features will be delivered on time and on budget
= A
? Releasing a valuable core early starts generating benefits, here saved commissions, and real usage informs what is built next.

@@ PR3 | Hybrid | multi
Which two of the following are benefits rather than deliverables? (Choose two.)
A) A 15% reduction in water leakage
B) Higher customer satisfaction scores
C) 50,000 installed smart meters
D) A new data platform
E) A trained support team
= A, B
? Deliverables are the outputs a project produces; benefits are the measurable improvements that result from using them.

@@ PR4 | Predictive
The project manager wants to reduce peaks in resource demand without delaying the project's end date. Which technique should be used?
A) Resource smoothing
B) Resource levelling
C) Crashing
D) Fast tracking
= A
? Resource smoothing adjusts activities within their float so that the end date does not change. Resource levelling can change the critical path and delay the end date.

@@ PR4 | Agile
A Scrum team needs a new developer. Who should be involved in selecting the person?
A) The team members, together with the hiring manager
B) The human resources department alone
C) The product owner alone, since the product owner sets priorities
D) The scrum master alone, since the scrum master serves the team
= A
? Involving the team in selection improves fit and commitment, while the hiring manager handles the formal employment decision.

@@ PR4 | Hybrid
A new hotel needs 150 trained staff before it opens, and the local labour market is tight. What should the project manager do?
A) Start recruiting early, use partnerships such as hospitality schools, and plan for shortfalls
B) Wait until construction is complete, so that new staff do not have to be paid before opening
C) Ask the hotel chain's other hotels to send some of their staff for the first year after the opening
D) Open with fewer staff and hire more people once the hotel has started to make money
= A
? Resource planning identifies when and how resources will be acquired. Long lead times and scarcity call for early action and contingency plans.

@@ PR4 | Hybrid
The installation crews fit 2,000 smart meters per week, but the warehouse can store only 5,000 meters. How should meter deliveries be planned?
A) In batches aligned with the installation rate and the storage capacity
B) All at once at the start, so that the crews never run out of meters
C) Only when the crews report that they have run out of meters
D) At a fixed monthly volume that suits the supplier's own production schedule
= A
? Physical resources are planned so that they arrive when needed, without exceeding storage capacity or causing idle crews.

@@ PR4 | Predictive
A research grant proposal names three scientists who must work on the project if the grant is awarded. What is this called?
A) Pre-assignment
B) Negotiation
C) Virtual teaming
D) Resource smoothing
= A
? Pre-assignment occurs when team members are known in advance, for example because they were named in a proposal or contract.

@@ PR4 | Hybrid
The project needs machine-learning skills for six months, and nobody in the organisation has them. What should the project manager do?
A) Compare contractors, training and partnering on time, cost and long-term need
B) Hire permanent staff at once, since the organisation should own all of its important skills
C) Ask an existing developer to learn machine learning in their spare time during the project
D) Remove the machine-learning features from the scope, since the skills are not available
= A
? Acquiring resources involves comparing options against the project's timing, cost and the organisation's longer-term needs.

@@ PR4 | Agile
The scrum master wants to see which skills each team member has and where the team depends on a single person. Which tool fits best?
A) A team skills matrix
B) A resource histogram
C) A burndown chart
D) A RACI chart
= A
? A skills matrix shows each person's skills and level, which reveals single points of failure and guides cross-training.

@@ PR5 | Predictive
In PMBOK 8, which process decides what will be bought, how it will be bought and which contract types will be used?
A) Plan Sourcing Strategy
B) Plan Resource Management
C) Acquire Resources
D) Plan Financial Management
= A
? Plan Sourcing Strategy (governance performance domain) covers make-or-buy decisions, procurement approaches and contract types.

@@ PR5 | Predictive
A hotel signs a five-year contract for linen supplies. The price of cotton may change significantly over this period. Which contract type protects both the buyer and the seller?
A) Fixed price with economic price adjustment
B) Firm fixed price for the full five years
C) Time and materials with no ceiling
D) Cost plus award fee
= A
? A fixed price with economic price adjustment contract allows the price to change in line with defined indexes, such as raw material costs, over a long contract.

@@ PR5 | Predictive
All of the bids received are about 40% higher than the buyer's independent cost estimate. What should the project manager do first?
A) Review the statement of work and the estimate for errors or misunderstandings
B) Award the contract to the lowest bidder, since all of the bids are high anyway
C) Ask all of the bidders to lower their prices by 40% to match the estimate
D) Cancel the procurement, since the bids show that the project is unaffordable
= A
? A large gap between bids and the independent estimate suggests that the statement of work was unclear or the estimate was wrong. This is investigated before decisions are made.

@@ PR5 | Agile
A buyer wants to be able to stop an agile vendor's work early once enough value has been delivered, while paying the vendor a fair share of the remaining budget. Which contract clause supports this?
A) An early termination clause, sometimes called "money for nothing"
B) A liquidated damages clause that penalises the vendor for each late feature
C) A firm fixed price for the full scope, payable only at final delivery
D) A non-compete clause that prevents the vendor from working for competitors
= A
? An early termination ("money for nothing") clause lets the buyer stop when the remaining value no longer justifies the cost, with a fee paid to the vendor.

@@ PR5 | Hybrid
The buyer and the seller disagree about whether some additional work is included in the contract, and their negotiations have failed. What should happen next?
A) The contract's dispute process is used, such as mediation or arbitration
B) The buyer withholds all payments until the seller agrees to do the work for free
C) The seller stops all work on the contract until the buyer agrees to pay for the work
D) The project manager decides the dispute, since the PM knows the project best
= A
? Alternative dispute resolution, such as mediation or arbitration, is preferred to litigation and follows the procedure agreed in the contract.

@@ PR5 | Hybrid
During a supplier evaluation, one of the bidders offers the project manager a free weekend at one of its hotels. What should the project manager do?
A) Decline the offer and report it in line with the organisation's policy
B) Accept the offer, since it will not influence the final evaluation
C) Accept the offer, but give the bidder a lower score to stay neutral
D) Ask the other bidders to make similar offers so that all are treated equally
= A
? Accepting gifts from bidders creates a conflict of interest. The PMI Code of Ethics requires the project manager to decline and disclose such offers.

@@ PR6 | Predictive | fill
BAC = $500,000, EV = $200,000 and AC = $250,000. If the current cost performance continues, by how much will the project exceed its budget at completion? (Answer in dollars.)
= $125,000
? CPI = 200,000 / 250,000 = 0.80. EAC = BAC / CPI = 500,000 / 0.80 = $625,000. VAC = BAC − EAC = −$125,000, so the expected overrun is $125,000.

@@ PR6 | Predictive
BAC = $1,000,000, EV = $400,000 and AC = $500,000. What to-complete performance index (TCPI) is needed to finish within the BAC?
A) 1.20
B) 0.80
C) 0.83
D) 1.25
= A
? TCPI = (BAC − EV) / (BAC − AC) = (1,000,000 − 400,000) / (1,000,000 − 500,000) = 600,000 / 500,000 = 1.20.

@@ PR6 | Agile
A team costs $60,000 per sprint and completes about 30 story points per sprint. Roughly how much will a feature estimated at 45 points cost?
A) $90,000
B) $45,000
C) $60,000
D) $135,000
= A
? Cost per point = 60,000 / 30 = $2,000. A 45-point feature costs about 45 × 2,000 = $90,000.

@@ PR6 | Predictive
The cost of the smart-meter installation is estimated by multiplying the number of meters by a historical cost of $120 per meter. Which estimating technique is this?
A) Parametric estimating
B) Analogous estimating
C) Bottom-up estimating
D) Three-point estimating
= A
? Parametric estimating uses a statistical relationship between historical data and a variable, such as cost per unit, to calculate an estimate.

@@ PR6 | Predictive
The project budget is made up of the cost baseline plus which of the following?
A) Management reserve
B) Contingency reserve
C) Profit
D) Sunk costs
= A
? The cost baseline includes contingency reserves. The project budget adds the management reserve, which is controlled by management.

@@ PR6 | Hybrid
A supplier requires a 40% deposit when orders are placed, which would push spending in the second quarter above the project's funding limit. What should the project manager do?
A) Reschedule purchases or negotiate payment terms to stay within the limit
B) Place the orders anyway and ask for extra funds once the limit is exceeded
C) Delay all of the project's purchases until the fourth quarter of the year
D) Use the management reserve to pay the deposits without telling anyone
= A
? Funding limit reconciliation aligns planned spending with available funds, for example by rescheduling work or changing payment terms.

@@ PR6 | Agile
An agile product has cost $2 million so far. The product owner's data shows that the remaining features have little value, but executives want to continue because so much has already been spent. What should guide the decision?
A) The future costs and benefits, not the money already spent
B) The amount already spent, which must be recovered by continuing
C) The original business case, which assumed that all features would be built
D) The team's preference, since it knows the product best
= A
? Money already spent is a sunk cost and should not influence future decisions. Investment decisions compare future costs with future benefits.

@@ PR7 | Predictive
An inspector records only whether each smart meter passes or fails its test. What type of sampling is this?
A) Attribute sampling
B) Variable sampling
C) Random sampling
D) Destructive sampling
= A
? Attribute sampling records whether a result conforms or not. Variable sampling measures a result on a continuous scale.

@@ PR7 | Agile
Which practice involves writing an automated test before writing the code that makes it pass?
A) Test-driven development
B) Exploratory testing
C) User acceptance testing
D) Regression testing
= A
? In test-driven development, developers write a failing test, write code to make it pass and then refactor, which builds quality in from the start.

@@ PR7 | Hybrid
Before renovating 200 hotel rooms, the project builds one complete model room for the owner to inspect. What is the main quality benefit?
A) Design and quality issues are found early, before they are repeated in every room
B) The owner can start renting out the model room before the others are finished
C) The contractor can skip inspections for the other rooms once the model is approved
D) The renovation of all of the rooms can be completed faster than planned
= A
? A model room is a prototype that allows early validation, so that defects are found and fixed once rather than in all 200 rooms.

@@ PR7 | Predictive
Researchers want to find which combination of temperature, pressure and time gives the best yield while running as few trials as possible. Which technique should they use?
A) Design of experiments
B) Benchmarking
C) A control chart
D) A cause-and-effect diagram
= A
? Design of experiments systematically varies several factors at once to identify their effects and the best combination with fewer trials.

@@ PR7 | Agile
The team's automated build has been broken for two days, but developers keep adding new code. What should the team do?
A) Fix the build first, before adding any new work
B) Keep adding code and fix the build at the end of the sprint
C) Turn off the failing tests so that the build passes again
D) Ask the product owner whether the broken build matters
= A
? A broken build hides new problems and makes defects harder to find. The team stops and fixes it first ("stop the line").

@@ PR7 | Predictive | multi
Which two tools help identify the root cause of a recurring defect? (Choose two.)
A) A cause-and-effect (Ishikawa) diagram
B) The five whys
C) A burndown chart
D) A RACI chart
E) A Gantt chart
= A, B
? Cause-and-effect diagrams and the five whys help trace a problem back to its root causes. The other tools track progress or responsibilities.

@@ PR8 | Predictive | fill
Activity A (4 days) starts the project. B (6 days) and C (3 days) both follow A. D (5 days) follows C. E (2 days) follows both B and D. What is the total float of activity B, in days? (Answer with a number.)
= 2
? Path A-B-E = 4 + 6 + 2 = 12 days. Path A-C-D-E = 4 + 3 + 5 + 2 = 14 days (critical). Float of B = 14 − 12 = 2 days.

@@ PR8 | Predictive
The project manager wants to see how the hotel's opening date would change if the furniture shipment arrived three weeks late. Which technique should be used?
A) What-if scenario analysis
B) Resource levelling
C) Rolling wave planning
D) Critical chain method
= A
? What-if scenario analysis evaluates the effect of different scenarios on the schedule, so that the project can prepare responses.

@@ PR8 | Agile
A Kanban team has 30 items in progress on average and completes about 10 items per week. What is the average cycle time?
A) 3 weeks
B) 10 weeks
C) 20 weeks
D) 40 weeks
= A
? Little's Law: average cycle time = average work in progress ÷ average throughput = 30 ÷ 10 = 3 weeks.

@@ PR8 | Hybrid
To recover two weeks, the project manager plans to order the hotel's furniture before the interior design is finalised. Which risk increases?
A) Rework, if the design changes after the furniture is ordered
B) Higher labour costs from adding more people to the work
C) Resource overallocation in the interior design team during the overlap
D) A longer critical path for the furniture installation
= A
? Fast tracking performs activities in parallel that would normally be done in sequence, which increases the risk of rework.

@@ PR8 | Predictive
The project manager adds "building permit received" to the schedule. How should it be shown?
A) As a milestone with zero duration
B) As an activity lasting the permit's processing time
C) As a lag between design and construction
D) As a summary activity covering all permit work
= A
? A milestone marks a significant point or event and has zero duration.

@@ PR8 | Agile
A team's data shows that 85% of its work items are finished within eight days of starting. How can the team use this information?
A) As a service level expectation when forecasting individual items
B) As a guarantee to stakeholders that every item will take eight days
C) As a target that every team member must meet for each of their items
D) As evidence that the team no longer needs to measure its cycle time
= A
? A service level expectation based on historical cycle times gives a probabilistic forecast for single items, for example "85% within eight days".

@@ PR8 | Hybrid
The hotel's opening date cannot move, but construction is four weeks behind schedule. Compression options are exhausted. What should the project manager propose?
A) Open on time with some facilities, such as the spa, completed after opening
B) Move the opening date, since a four-week construction delay can no longer be recovered
C) Ask the contractors to skip the final safety inspections to save time
D) Open on time and complete the guest rooms while guests are staying there
= A
? When time is fixed, scope can be adjusted. Phasing non-essential facilities protects the opening date without compromising safety or the guest experience.

@@ PR9 | Predictive
To avoid subjective progress estimates, the project manager credits 0% when an activity starts and 100% only when it is complete. What is this method called?
A) The 0/100 rule
B) The 50/50 rule
C) Percent complete
D) Weighted milestones
= A
? The 0/100 rule credits earned value only when the work is complete. It is objective but suits short activities, since long activities show no progress until they finish.

@@ PR9 | Agile
Management wants to rank three agile teams by their velocity. What should the agile coach explain?
A) Velocity is specific to each team and should not be compared between teams
B) Velocity is a good basis for ranking teams, as long as all of them use story points
C) The team with the lowest velocity should adopt the estimation scale of the highest
D) Teams should be ranked by velocity only after it has been stable for three sprints
= A
? Story points are relative to each team, so velocities cannot be compared across teams. Comparisons encourage point inflation; outcome measures are more useful.

@@ PR9 | Hybrid
A milestone trend chart shows that the forecast go-live date has slipped by about a week every month for four months. What does this suggest?
A) The date is likely to slip further unless the causes are found and addressed
B) The project will recover the delay automatically before go-live
C) The trend is normal and requires no action from the project manager
D) The chart is unreliable, since forecast dates always change from one month to the next
= A
? Trend analysis shows a consistent pattern of slippage. The causes should be investigated and corrective action taken now.

@@ PR9 | Agile
A cycle-time scatterplot shows that a few items took five times longer than most others. What should the team do?
A) Investigate the outliers for common causes, such as blockers
B) Remove the outliers from the chart so that the average looks more realistic
C) Ask the people who worked on those items to work faster in future
D) Ignore the outliers, since they represent only a small number of items
= A
? Outliers often reveal systemic problems, such as dependencies, waiting or unclear requirements, which the team can address.

@@ PR9 | Predictive
Raw observations collected during execution, such as actual start dates and costs incurred, are known as what?
A) Work performance data
B) Work performance information
C) Work performance reports
D) Performance baselines
= A
? Work performance data is raw. When analysed against the plan it becomes work performance information, which is presented in work performance reports.

@@ PR9 | Predictive | match
Match each earned value result with what it indicates.
1) SPI below 1.0
2) CPI above 1.0
3) TCPI above 1.0
4) Positive VAC
A) The project is behind schedule
B) The project is under budget so far
C) Cost efficiency must improve to meet the target
D) The project is expected to finish under budget
= 1-A, 2-B, 3-C, 4-D
? SPI and CPI describe performance to date; TCPI shows the efficiency required on the remaining work; VAC compares the budget with the forecast at completion.

@@ PR9 | Hybrid | multi
Which two are leading indicators of future project performance? (Choose two.)
A) The number of open high-priority risks
B) The number of unresolved impediments
C) The final cost of the project
D) Customer satisfaction after closure
E) Defects found after release
= A, B
? Leading indicators help predict future performance, so action can be taken in time. Final costs, post-closure satisfaction and escaped defects are lagging indicators.

@@ PR10 | Hybrid
A research project ends early because the main hypothesis was disproved. What should the project manager do?
A) Document the findings and lessons, archive the data and release the resources
B) Close the project without documentation, since it did not produce any results
C) Keep the project open and look for another hypothesis to test with the budget
D) Ask the team to repeat the experiments until the results support the original hypothesis
= A
? A disproved hypothesis is a valid result. Closure documents the findings and lessons, archives the records and releases resources.

@@ PR10 | Agile
A long-lived product team completes a funded release project. What happens at closure?
A) The project's funding, contracts and reporting close, while the product team continues
B) The product team is disbanded, since the project that funded its work has now formally ended
C) Nothing changes, since agile projects do not need any formal closure activities
D) The product is switched off until a new project is approved to continue it
= A
? Projects close even when products continue. Closure finalises the project's funding, contracts and records, while the product team carries on.

@@ PR10 | Predictive
Who formally signs the acceptance of the final product?
A) The customer or sponsor, per the acceptance criteria
B) The project manager, after quality control is complete
C) The team member who built the final deliverable
D) The PMO, after it has audited the project's records
= A
? Formal acceptance is given by the customer or sponsor according to the agreed acceptance criteria or contract terms.

@@ PR10 | Hybrid
At closure, some risks will remain for the operations team, such as meter battery failures expected in year eight. What should the project manager do?
A) Transfer the remaining risks to the operational owner's risk register
B) Close the risks, since the project is ending and will not be affected
C) Keep the project open until each of the risks has either occurred or expired
D) Mention the risks in the final report without assigning any owner
= A
? Risks that outlast the project are handed over to the owner who will manage them in operations.

@@ PR10 | Predictive
The new warehouse equipment has been accepted and comes with a two-year warranty. Who manages warranty claims after the project closes?
A) The operations or asset owner, who receives the warranty terms
B) The project manager, who remains responsible for the equipment after closure
C) The vendor's project manager, who decides when claims are made
D) No one, since warranties end when the project is closed
= A
? Warranty terms and supplier contacts are handed over to the operational owner as part of the transition.

@@ PR10 | Agile
After the final release, the sponsor asks how to judge whether the project was successful. What should the project manager do?
A) Compare outcomes with the success criteria and benefits agreed at the start
B) Count the number of features delivered and compare it with the original backlog
C) Measure the total hours the team worked during the project
D) Ask the team whether it enjoyed working on the project
= A
? Success is judged against the agreed success criteria and benefits, not against outputs or effort.
