%% CASE AgriSense sensor rollout
AgriSense sells soil sensors and a crop-advice app. Before the spring planting season, it will install a new generation of sensors on **400 farms**. A contract manufacturer builds the sensors under a fixed-price contract, field crews install them following a predictive plan, and two agile teams build a new irrigation-advice feature for the app.

- At the first article inspection, **4% of the sensors are defective**; the contract requires no more than 1%.
- **10 crews** each install sensors on **2 farms per day**. Planting starts in **30 working days**. Sensors for **100 farms** will arrive **10 days late**; the rest are available now.
- Installation budget (BAC) is **$600,000**, or $1,500 per farm. After 8 days, **140 farms** are done against **160 planned**, and the actual cost is **$230,000**.
- For the first release, the product owner can deliver either basic irrigation advice for all 15 crops, or detailed advice for the 3 crops grown on 80% of the farms. Pilot farmers said the basic advice "tells us nothing new".
@@ PR7 | Predictive
What should the project do about the results of the first article inspection?
A) Have the manufacturer find and correct the root cause before mass production
B) Accept the sensors and replace the defective ones in the field after installation
C) Inspect every sensor on arrival and return the defective ones to the manufacturer
D) Accept a 4% defect rate for this season, since the planting deadline is close
= A
? Quality is built into the process. The manufacturer must correct the cause and meet the contractual limit before production; inspecting every sensor or replacing them in the field is costly and does not prevent defects.

@@ PR8 | Predictive
What is the effect of the late sensors on the completion of the installations?
A) No delay, if the crews install the sensors that are already available first
B) A 10-day delay, since the late sensors arrive 10 days after installation starts
C) A 5-day delay, since only a quarter of the sensors are late
D) A missed planting date, since the crews cannot work while waiting
= A
? The crews install 20 farms per day. The 300 farms with available sensors take 15 days, and the late sensors arrive on day 10, before the crews need them. Installing all 400 farms takes 20 days, well within the 30 days available.

@@ PR6 | Predictive
If the current cost performance continues, what is the estimate at completion for the installations?
A) About $657,000
B) About $575,000
C) About $620,000
D) About $751,000
= A
? EV = 140 × $1,500 = $210,000. CPI = 210,000 / 230,000 ≈ 0.913. EAC = BAC / CPI = 600,000 / 0.913 ≈ $657,000.

@@ PR3 | Agile
Which option should the product owner choose for the first release?
A) Detailed advice for the three main crops, extended to other crops later
B) Basic advice for all 15 crops, since every farm should get something
C) Both options together, with the release date moved to fit them in
D) Neither option, until the pilot farmers agree among themselves on what they want most
= A
? Detailed advice for the main crops delivers the most value to the most farms, and pilot feedback shows that basic advice has little value. Other crops can follow in later releases.
%% END CASE

@@ PR1 | Predictive
A defence prime contractor must coordinate the work of twelve subcontractors. Which planning tool links all of their milestones and dependencies?
A) An integrated master schedule
B) A separate schedule for each subcontractor
C) A product backlog for each subcontractor
D) A milestone list kept by the prime contractor
= A
? An integrated master schedule combines the work of all parties, including dependencies between them, so that the overall critical path and integration points are visible.

@@ PR1 | Predictive
Work on the railway can be done only during track closures, which must be booked with the rail operator twelve months in advance. How should the project manager plan for this?
A) Book the closures early and plan the work packages around them as fixed constraints
B) Plan the work first and book the closures once the detailed design is complete
C) Ask the rail operator to provide closures whenever the work is ready to start on site
D) Assume that closures will be available, since the railway needs the upgrade
= A
? Scheduled track closures are fixed constraints with long lead times. They are secured early, and the work is planned to fit them.

@@ PR1 | Hybrid | multi
Which two factors should most influence how a defence programme tailors its project management approach? (Choose two.)
A) Regulatory and contractual requirements
B) The level of uncertainty and risk
C) The project manager's favourite tools
D) The sponsor's preference for Gantt charts
E) The approach used on the last project
= A, B
? Tailoring considers the project's context: regulatory and contractual obligations, uncertainty, risk, complexity and the organisation's culture, not personal preferences or habit.

@@ PR1 | Predictive
Which planning document lists the significant points in the project and shows whether each one is mandatory, for example required by contract, or optional?
A) The milestone list
B) The activity list
C) The resource calendar
D) The issue log
= A
? The milestone list identifies all milestones and indicates whether each is mandatory or optional.

@@ PR1 | Hybrid
The client requires a fixed plan for its steering committee, but the first phase of the consulting engagement is exploratory. How should the engagement manager plan?
A) Use a milestone plan with timeboxed discovery and decision points
B) Produce a detailed task plan for all three phases at the start of the engagement
C) Avoid any plan until the discovery phase has been completed
D) Let the steering committee write the plan for the consultants
= A
? A milestone plan with timeboxes gives the steering committee the predictability it needs, while decision points allow later phases to be planned in detail as knowledge grows.

@@ PR1 | Agile
New crop-advice features can be tested with real crops only during the growing season. How should the team plan its releases?
A) Around the farming calendar, using simulations out of season
B) In fixed quarterly releases, since the growing season is the farmers' concern
C) As one large release at the end of the year, after the season has finished
D) Without considering the seasons, since agile teams release continuously
= A
? Planning considers external constraints. Aligning releases with the growing season, and using other validation methods out of season, keeps feedback flowing.

@@ PR1 | Agile
At what level of detail should a team describe work that it expects to do about six months from now?
A) As coarse epics or themes
B) As detailed tasks with hour estimates
C) As fully specified user stories
D) It should not be described at all
= A
? Agile planning is progressive: near-term work is detailed, while later work is described at a high level and refined as it approaches.

@@ PR1 | Agile
A Kanban team does not use sprints. How does it plan which work to do next?
A) Through regular replenishment of a prioritised ready queue, within WIP limits
B) Through a detailed annual plan prepared by the project manager in advance
C) By letting each team member pick any item they find interesting at the time
D) By completing the items strictly in the order in which the requests were received
= A
? Kanban teams plan continuously: the product owner keeps the ready queue prioritised, and the team pulls work within its WIP limits.

@@ PR2 | Predictive
In a defence contract, how is each requirement typically shown to have been met?
A) Through a verification method for each requirement, such as test or inspection
B) Through a statement from the project manager that the requirement has been met
C) Through the customer's general impression of the system at the final acceptance meeting
D) Through the number of hours spent working on each of the requirements
= A
? A verification matrix assigns each requirement a method (test, analysis, inspection or demonstration), which provides objective evidence that the requirement has been met.

@@ PR2 | Agile
A user story reads: "As a farmer, I want soil moisture alerts." Which part of the usual story format is missing?
A) The benefit ("so that ...")
B) The user role ("As a ...")
C) The goal ("I want ...")
D) The story point estimate
= A
? The standard format is "As a [role], I want [goal], so that [benefit]". The benefit explains why the story matters and helps the team find the best solution.

@@ PR2 | Hybrid
Stakeholders disagree about which external systems the new platform must exchange data with. Which tool shows this most clearly?
A) A context diagram
B) A burndown chart
C) A RACI chart
D) A fishbone diagram
= A
? A context diagram shows the system and the external parties and systems that interact with it, which clarifies scope boundaries and interfaces.

@@ PR2 | Agile
Who usually takes part in backlog refinement?
A) The product owner and developers, plus others as needed
B) The sponsor and the members of the steering committee
C) The scrum master alone, in the days before each sprint
D) The project manager and the PMO, without the team
= A
? Refinement is a collaboration between the product owner and the developers, with stakeholders or experts joining when their input is needed.

@@ PR2 | Agile
A team splits a feature into three stories: "database work", "interface work" and "screen work". What is the problem?
A) None of the stories delivers anything a user can use on its own
B) The stories are too small for the team to estimate them reliably in planning poker
C) The stories should all be assigned to one specialist developer
D) The stories should be combined into a single epic for the team
= A
? Horizontal slices by technical layer deliver no user value on their own. Vertical slices cut through all layers to deliver small, usable pieces of functionality.

@@ PR2 | Predictive
When should the acceptance test procedures for a defence system be agreed with the customer?
A) Early, during planning, as part of the agreed acceptance criteria
B) During the final acceptance test, when the customer sees the system
C) After delivery, once the customer has used the system for a while
D) Never, since acceptance is decided by the project team alone
= A
? Agreeing acceptance tests early removes ambiguity about what "done" means and lets the team design and verify the system against them.

@@ PR2 | Hybrid
Two subcontractors build subsystems that must exchange data. Which document defines how the subsystems connect?
A) An interface control document
B) The project charter
C) The stakeholder register
D) The lessons learned register
= A
? An interface control document specifies the data, formats and protocols for an interface, so that subsystems built by different parties work together.

@@ PR2 | Predictive
A requirement states that the new ticket machines must be "user-friendly". What should the business analyst do?
A) Turn it into measurable criteria, such as the time needed to buy a ticket
B) Accept it as written, since everyone understands what user-friendly means
C) Remove it from the requirements, since it cannot be tested at all
D) Let the designers decide later what user-friendly should mean for the machines
= A
? Requirements must be measurable and testable. Vague terms are made concrete with criteria such as task time or error rates.

@@ PR3 | Predictive
How should the value of a defence training simulator best be measured?
A) By the improvement in the trainees' readiness, such as qualification rates
B) By the number of simulator modules delivered by the end of the project
C) By the number of hours the simulator is switched on each month during training
D) By the price of the simulator compared with the original budget
= A
? Value lies in the outcomes the product enables, here better-trained personnel, rather than in outputs or usage alone.

@@ PR3 | Agile
After three experiments, the data shows that farmers will not pay for the premium advice feature. What should the product owner consider?
A) Pivoting to a different approach, based on the evidence
B) Building the full feature anyway, as originally planned
C) Running the same experiment until the results improve
D) Hiding the results from stakeholders until a solution is found
= A
? Validated learning informs a "pivot or persevere" decision. When the evidence contradicts a hypothesis, changing direction protects value.

@@ PR3 | Hybrid
The consulting engagement will run for nine months, but the client is impatient for results. What should the engagement manager do?
A) Deliver some quick wins early, while working on the longer-term recommendations
B) Ask the client to wait patiently, since good analysis takes the full nine months
C) Shorten the engagement to three months by reducing the depth of the analysis
D) Present the draft recommendations early, even though they are not yet validated
= A
? Delivering value incrementally builds confidence and starts realising benefits, while the larger work continues.

@@ PR3 | Agile
An agritech start-up wants a one-page view of its customer segments, value propositions, channels and revenue streams. Which tool fits?
A) A business model canvas
B) A work breakdown structure
C) A cumulative flow diagram
D) A risk breakdown structure
= A
? The business model canvas summarises how a product creates, delivers and captures value on a single page.

@@ PR3 | Predictive
The sponsor asks how the new signalling system will actually lead to fewer train delays. Which tool shows the chain from outputs to benefits?
A) A benefits map
B) A Gantt chart
C) A resource histogram
D) A control chart
= A
? A benefits map (or benefits dependency network) links outputs to the capabilities, outcomes and benefits they enable, showing how value will be realised.

@@ PR3 | Agile
Stakeholders are given a limited amount of play money to spend on the features they want most. What is this prioritisation technique called?
A) Buy a feature
B) Planning poker
C) Dot voting
D) Fist of five
= A
? In "buy a feature", stakeholders spend a limited budget, which forces trade-offs and reveals what they really value.

@@ PR3 | Hybrid
A useful set of features is ready, but adding the remaining planned features would mean missing this year's planting season. What should the product owner recommend?
A) Release what is ready now, so that farmers benefit this season
B) Wait for the full feature set, so that farmers get a complete product
C) Release everything on time by reducing testing of the remaining features
D) Ask the farmers to delay planting until the full release is available
= A
? Releasing valuable functionality when it can be used captures value that would otherwise be lost. Later features can follow.

@@ PR4 | Predictive
New engineers on a defence project need security clearances, which take four to six months. How should the project manager plan for this?
A) Include the clearance lead time in the resource plan and start early
B) Let the engineers start work before their clearances have been granted
C) Ask the customer to waive the clearance requirements for this project
D) Wait until the engineers are needed before applying for the clearances
= A
? Resource planning includes acquisition lead times. Starting clearances early prevents delays without breaching security rules.

@@ PR4 | Agile
Management wants to move developers between teams every sprint to balance workloads. What should the agile coach recommend?
A) Keep teams stable and bring the work to the teams instead
B) Move developers every sprint, since this spreads knowledge across teams
C) Form a new team for every project to keep teams fresh
D) Let managers choose each sprint's team members
= A
? Stable teams build trust, shared knowledge and predictable performance. Moving work to teams is usually more effective than moving people.

@@ PR4 | Hybrid
The consulting engagement's budget is tight, but the client expects senior expertise. How should the engagement manager staff the team?
A) A mix: seniors on key decisions and reviews, juniors on analysis, with quality checks
B) Only junior consultants, since the budget is tight and seniors are the most expensive staff
C) Only senior consultants, since the client expects expertise and will not accept juniors
D) Whoever is available on the bench, since the engagement starts next week
= A
? Resource planning matches skills to the work: senior expertise where it matters most, supported by cost-effective analysts and quality reviews.

@@ PR4 | Predictive
Each test drone needs maintenance after 50 flight hours, but the field trial plan assumes that the drones will be used continuously. What should the project manager do?
A) Include the maintenance downtime in the plan and arrange spare drones
B) Postpone all maintenance until the field trials have been completed
C) Ask the operators to fly the drones for longer between maintenance checks to save time
D) Assume that the drones will not need maintenance during the trials
= A
? Physical resource planning includes availability limits such as maintenance. Ignoring them creates safety risks and schedule surprises.

@@ PR4 | Agile
Which team structure lets each team deliver complete customer features with the fewest handoffs?
A) Feature teams
B) Component teams
C) Functional teams
D) Specialist pools
= A
? Cross-functional feature teams have all the skills needed to deliver end-to-end features, which reduces dependencies and handoffs.

@@ PR4 | Predictive
Signalling cabinets have a 40-week lead time from order to delivery. How should the project manager handle them?
A) Order them early, as long-lead items, based on the schedule
B) Order them when the installation crews are ready to fit them
C) Ask the supplier to deliver faster when the cabinets are needed
D) Replace them with a cheaper product that can be bought locally
= A
? Long-lead items are identified early and ordered in time, since they often drive the critical path.

@@ PR4 | Hybrid
Sensors will be installed on 400 farms in five regions. How should the installation crews be organised?
A) As regional crews with local knowledge, coordinated centrally to shared standards
B) As a single central crew that travels between all of the farms in the five regions
C) As independent crews in each region, each using its own methods and standards
D) As crews hired by each farmer, who then installs the sensors on their own farm
= A
? Regional crews reduce travel and use local knowledge, while central coordination and shared standards maintain consistent quality.

@@ PR5 | Predictive
During a public tender, a bidder calls the project manager to ask a question about the requirements. What should the project manager do?
A) Direct the question to the formal clarification process, so that all bidders receive the answer
B) Answer the question by phone, since it helps the bidder prepare a better proposal for the project
C) Refuse to answer, since no questions are allowed while a public tender is open
D) Answer the question and ask the bidder to keep the answer confidential from the other bidders
= A
? Fairness requires that all bidders receive the same information. Questions are answered through the formal clarification process and shared with everyone.

@@ PR5 | Agile
The buyer wants the agile vendor to keep the same key team members for the whole contract. How can this be ensured?
A) A key personnel clause in the contract
B) A liquidated damages clause for delays
C) A firm fixed price for the whole scope
D) A non-disclosure agreement with the vendor
= A
? A key personnel clause requires the vendor to keep named people on the work, or to get the buyer's approval for replacements.

@@ PR5 | Predictive | match
Match each procurement document with its use.
1) Request for information
2) Request for quotation
3) Request for proposal
4) Letter of intent
A) Gathering information about the market and possible suppliers
B) Obtaining prices for clearly defined goods or services
C) Asking sellers to propose solutions for a complex need
D) Stating the buyer's intention to award a contract before it is signed
= 1-A, 2-B, 3-C, 4-D
? Procurement documents are chosen according to how well defined the need is and the stage of the procurement.

@@ PR5 | Hybrid
The buyer describes the outcomes and performance levels it requires, and leaves the supplier to decide how to achieve them. What type of statement of work is this?
A) A performance statement of work
B) A design statement of work
C) A functional specification only
D) A time and materials agreement
= A
? A performance SOW states the required results and measurable performance standards rather than the methods, which gives the supplier flexibility.

@@ PR5 | Predictive
The contract states that the seller will pay $5,000 for each day of delay in delivery. What is this clause called?
A) Liquidated damages
B) An incentive fee
C) A retention payment
D) A performance bond
= A
? Liquidated damages are pre-agreed compensation for a specific breach, such as late delivery.

@@ PR5 | Agile
To choose an agile vendor, the buyer pays each of the two shortlisted vendors to work on a short pilot. What is the main advantage of this approach?
A) It shows how each vendor actually works and delivers before the buyer commits
B) It lowers the total cost of the procurement, since both of the pilots are short and cheap
C) It removes the need for a contract with the vendor that is finally chosen
D) It guarantees that the chosen vendor will finish the whole project on time
= A
? A paid pilot provides direct evidence of the vendor's collaboration, quality and delivery, which reduces selection risk.

@@ PR5 | Hybrid
A subcontractor of the main seller contacts the buyer to complain that the seller is paying it late. What should the buyer's project manager do?
A) Raise it with the main seller, since the buyer's contract is with the seller
B) Pay the subcontractor directly and deduct the amount from the seller's next invoice
C) Ignore the complaint, since payments to subcontractors are not the buyer's concern
D) Terminate the contract with the main seller for failing to pay its subcontractors
= A
? The buyer has no contract with the subcontractor (privity of contract). Concerns are raised with the seller, while the buyer considers any risk to its project.

@@ PR6 | Predictive | fill
Three work packages are estimated at $40,000 each. The contingency reserve is $15,000, and the management reserve is $20,000. What is the cost baseline? (Answer in dollars.)
= $135,000
? Cost baseline = work package estimates + contingency reserve = 3 × 40,000 + 15,000 = $135,000. The management reserve is outside the cost baseline but part of the budget.

@@ PR6 | Agile
The product has $480,000 of funding left, and the team costs $40,000 per sprint. How many more sprints can be funded?
A) 12
B) 10
C) 14
D) 20
= A
? 480,000 / 40,000 = 12 sprints.

@@ PR6 | Predictive
What accuracy range is typical for a rough order of magnitude estimate made early in a project?
A) −25% to +75%
B) −5% to +10%
C) −10% to +15%
D) Exactly ±0%
= A
? A rough order of magnitude estimate is made with little information, so its range is wide, typically −25% to +75%. Definitive estimates are narrower.

@@ PR6 | Predictive
EV = $300,000 and PV = $350,000. What is the schedule variance?
A) −$50,000
B) +$50,000
C) −$30,000
D) +$30,000
= A
? SV = EV − PV = 300,000 − 350,000 = −$50,000, which means the project is behind schedule.

@@ PR6 | Agile
In an agile project with a stable team and a fixed budget, which element usually varies?
A) Scope
B) Cost
C) Team size
D) Sprint length
= A
? With fixed time and cost (a stable, funded team), scope flexes: the product owner prioritises so that the most valuable work is done within the budget.

@@ PR6 | Hybrid
The CPI has dropped to 0.80 because materials for next month's work were bought early at the planned price. What does this mean?
A) It is a timing effect that should disappear once the related work is done
B) The project will finish 20% over budget, so the sponsor should be warned
C) The supplier has overcharged the project and should refund the difference
D) The earned value system is wrong and should no longer be used for reporting at all
= A
? AC includes the early purchase, but EV is earned only when the work is done. The variance is a timing effect, which the project manager should confirm and explain.

@@ PR6 | Hybrid
A defence contract requires the seller to use an earned value management system. Why does the customer want this?
A) To gain objective, integrated insight into cost and schedule performance
B) To make sure that the seller cannot change any part of the plan during the contract
C) To replace the need for the customer's own reviews of the seller's technical work
D) To make sure that the seller's profit margin is kept as low as possible on the work
= A
? Earned value integrates scope, schedule and cost, which gives the customer early, objective warnings and forecasts on large contracts.

@@ PR7 | Agile
Testers explore a new feature without scripts, using their experience to find unexpected problems. What is this called?
A) Exploratory testing
B) Regression testing
C) Unit testing
D) Load testing
= A
? Exploratory testing combines learning, test design and execution at the same time, which is effective at finding unexpected issues.

@@ PR7 | Predictive
Which metric best measures the reliability of signalling equipment?
A) Mean time between failures
B) Cost per unit installed
C) Number of units delivered
D) Hours spent on design
= A
? Mean time between failures measures how long equipment typically operates before failing, which is a direct measure of reliability.

@@ PR7 | Predictive
Inspectors want to tally the types of defects found during installation in a simple, structured way. Which tool should they use?
A) A check sheet
B) A scatter diagram
C) A control chart
D) A network diagram
= A
? A check sheet (tally sheet) organises the collection of defect data, which can later be analysed, for example with a Pareto chart.

@@ PR7 | Hybrid
The accuracy of the yield prediction model slowly declines as weather patterns change. What should the team do?
A) Monitor the model's performance in use and retrain and revalidate it regularly
B) Freeze the model, since changing it could introduce new errors for the farmers using it
C) Wait for farmers to complain before investigating the model's accuracy
D) Replace the model with a simpler rule of thumb that never needs updating
= A
? AI models can drift as conditions change. Quality management includes monitoring performance in use and retraining with validation.

@@ PR7 | Agile
What is the main quality benefit of continuous integration?
A) Integration problems are found early, while they are cheap to fix
B) Testers are no longer needed in the team, since builds are automatic
C) Releases can be made without any further approval from the business
D) The team needs fewer coding standards, since the build checks the code
= A
? Integrating and testing frequently finds integration defects soon after they are introduced, when they are easiest and cheapest to fix.

@@ PR7 | Predictive
A sensor's soil moisture readings are tightly clustered but consistently 5% above the true value. How are the readings best described?
A) Precise but not accurate
B) Accurate but not precise
C) Both precise and accurate
D) Neither precise nor accurate
= A
? Precision is the consistency of repeated measurements; accuracy is closeness to the true value. Clustered readings with a consistent offset are precise but not accurate.

@@ PR8 | Predictive | fill
An activity has an optimistic estimate of 6 days, a most likely estimate of 9 days and a pessimistic estimate of 18 days. What is its PERT (beta) expected duration, in days? (Answer with a number.)
= 10
? PERT expected duration = (O + 4M + P) / 6 = (6 + 36 + 18) / 6 = 60 / 6 = 10 days.

@@ PR8 | Agile
A team of five full-time members has an average velocity of 40 points. Next sprint, one member will be away for the whole sprint. What is a reasonable velocity to plan for?
A) About 32 points
B) About 25 points
C) About 35 points
D) About 40 points
= A
? With four of five members available, capacity is about 80% of normal: 0.8 × 40 = 32 points.

@@ PR8 | Predictive
Activity X can be delayed by 3 days without delaying the early start of any successor, and by 5 days without delaying the project's end date. What is its free float?
A) 3 days
B) 5 days
C) 2 days
D) 8 days
= A
? Free float is the delay possible without delaying any successor's early start (3 days). Total float is the delay possible without delaying the project end (5 days).

@@ PR8 | Predictive
The schedule shows a total float of −4 days on the critical path. What does this mean?
A) A required date will be missed by four days unless action is taken
B) The project is currently four days ahead of its approved schedule baseline
C) The critical path has four days of spare time available
D) The schedule calculation contains an error that must be fixed
= A
? Negative float means that the scheduled dates cannot meet an imposed date or constraint. Corrective action, such as compression, is needed.

@@ PR8 | Agile
A Kanban team wants to forecast, with a stated level of confidence, when its 60 remaining items will be done. Which approach fits best?
A) A Monte Carlo simulation based on historical throughput
B) A single estimate based on the team's best week so far
C) A PERT estimate for each of the 60 remaining items
D) Asking each team member to guess the completion date and averaging the guesses
= A
? Monte Carlo simulation using historical throughput produces a probabilistic forecast, for example "85% likely by 14 June".

@@ PR8 | Hybrid
Field trials can take place only during a six-week growing window. How should the schedule handle this?
A) Treat the window as a date constraint and plan the earlier work with a buffer
B) Schedule the trials whenever the preceding work happens to be complete
C) Ignore the window, since trials can be repeated in another season if needed
D) Shorten the trials to one week so that they fit wherever they happen to fall in the year
= A
? An external window is a hard constraint. The preceding work is planned with a buffer so that the trials can start when the window opens.

@@ PR8 | Agile
The team regularly commits to more work than it completes in a sprint. Which planning practice would help most?
A) Plan based on recent actual velocity
B) Plan based on the team's best sprint
C) Add more stories to motivate the team
D) Extend the sprint when work is unfinished
= A
? Using recent actual performance ("yesterday's weather") makes sprint plans realistic and reliable.

@@ PR9 | Predictive
EV = $400,000 and AC = $440,000. What is the cost variance percentage?
A) −10%
B) −9%
C) +10%
D) −11%
= A
? CV = EV − AC = −$40,000. CV% = CV / EV = −40,000 / 400,000 = −10%.

@@ PR9 | Agile
Which chart shows how long each item in progress has been in progress, highlighting items that are at risk of becoming late?
A) An aging WIP chart
B) A release burnup chart
C) A cumulative flow diagram
D) A sprint burndown chart
= A
? An aging work-in-progress (WIP) chart compares each item's age with historical cycle times, which helps the team act on items before they become very late.

@@ PR9 | Hybrid
Besides cost and schedule, the defence customer wants to know whether key technical parameters, such as the system's weight, are on target. What should be reported?
A) Technical performance measures compared with their planned values
B) The number of engineering hours spent on each technical parameter
C) The list of design documents produced in the last reporting period
D) The opinion of the chief engineer about the system's overall quality
= A
? Technical performance measures track critical technical parameters against planned values, which gives early warning of technical problems.

@@ PR9 | Predictive
What does research suggest about the cumulative CPI once a project is about 20% complete?
A) It tends to stay stable, which makes it a reasonable predictor of final cost
B) It becomes unreliable, since most cost problems appear only near the end
C) It always improves, since teams become more efficient as they learn
D) It should be reset to 1.0, since early performance is not representative of the whole project
= A
? Studies of large projects show that the cumulative CPI rarely changes much after about 20% completion, so it is a useful basis for forecasting.

@@ PR9 | Hybrid | multi
Which two items belong in a work performance report? (Choose two.)
A) Status against the baselines, with forecasts
B) Key issues and risks that need decisions
C) The raw timesheets of every team member
D) Personal opinions about team members
E) The full project management plan
= A, B
? Work performance reports present analysed information, such as status, forecasts, issues and risks, in a form that supports decisions.

@@ PR9 | Predictive
Halfway through the project, 80% of the contingency reserve has been used, while many identified risks remain open. What should the project manager do?
A) Analyse whether the remaining reserve is adequate and report it, with options
B) Stop all risk responses so that the remaining reserve can be kept for emergencies
C) Use the management reserve without approval, since contingency is running out
D) Wait until the reserve is fully used before raising the issue with the sponsor
= A
? Reserve analysis compares the remaining reserve with the remaining risk. A shortfall is reported early so that decisions can be made.

@@ PR9 | Agile
The product owner wants to show how much of the release's expected value has already been delivered. What could the team track?
A) Cumulative business value points delivered each sprint
B) The number of hours worked by the team each sprint
C) The number of meetings held with stakeholders during the release
D) The number of lines of code added each sprint
= A
? When the product owner assigns relative business value to items, the cumulative value delivered shows progress towards the release's value, not just its effort.

@@ PR10 | Predictive
At the end of a defence contract, test equipment loaned by the customer is still at the contractor's site. What should the project manager do?
A) Return or dispose of it as the contract requires, and record what was done
B) Keep it at the contractor's site in case it is needed for future projects
C) Sell it to recover some of the project's costs, since it is no longer needed
D) Leave it in place until the customer asks for it to be returned
= A
? Customer-furnished property is returned or disposed of according to the contract, and its disposition is documented as part of closure.

@@ PR10 | Agile
A pilot with 20 farms has ended. What should the pilot's closure include?
A) Evaluating results against the pilot's goals and recommending next steps
B) Switching off the sensors on the pilot farms without telling the farmers
C) Starting the full rollout immediately, since the pilot has now ended successfully
D) Deleting the pilot data, since it is no longer needed by anyone
= A
? Closing a pilot means evaluating it against its goals, documenting findings and making a recommendation, for example to scale, change or stop.

@@ PR10 | Hybrid | multi
Which two closure activities help a consulting firm improve its future engagements? (Choose two.)
A) Collecting feedback from the client
B) Capturing lessons learned with the team
C) Deleting all of the working files
D) Issuing the final invoice to the client
E) Releasing the consultants to other work
= A, B
? Client feedback and lessons learned capture what worked and what did not, which improves future engagements. The other activities are part of closure but do not drive improvement.

@@ PR10 | Predictive
After the new station opens, the contractor remains responsible for fixing defects for 12 months. What is this period called?
A) The defect liability period
B) The project closure phase
C) The schedule contingency
D) The transition sprint
= A
? During the defect liability (warranty) period, the contractor must fix defects that appear after handover, usually under retention or bond arrangements.

@@ PR10 | Predictive
Why should the project's cost accounts be closed during project closure?
A) To prevent further charges and finalise the project's actual costs
B) To transfer the remaining budget to the project team as a bonus
C) To hide the final costs from the steering committee and the auditors
D) To free the project manager from reporting any further information
= A
? Closing the accounts stops further charges, so that the final costs are accurate and can be reported and audited.

@@ PR10 | Agile
At closure, contractors still have access to the code repository and the cloud accounts. What should be done?
A) Revoke their access and transfer ownership of accounts and repositories
B) Leave their access in place in case they are needed again in the future
C) Ask the contractors to stop using their access without removing it
D) Delete the repository so that nobody can access the code or the cloud accounts any more
= A
? Closure includes administrative and security tasks, such as removing access and transferring ownership of assets to the organisation.
