%% CASE Northbridge Logistics distribution centre
Northbridge Logistics is building a new distribution centre using a predictive approach. The schedule network is:

| Activity | Description | Duration (weeks) | Predecessor(s) |
|---|---|---|---|
| A | Site preparation | 4 | — |
| B | Foundations | 6 | A |
| C | Steel frame | 8 | B |
| D | Utilities | 5 | B |
| E | Roof and cladding | 6 | C |
| F | Interior fit-out | 7 | D |
| G | Racking and systems | 4 | E, F |

Earned value data at the end of week 12: budget at completion (BAC) $9.0 million; planned value (PV) $3.0 million; earned value (EV) $2.7 million; actual cost (AC) $2.6 million.
@@ PR8 | Predictive
What is the planned duration of the project?
A) 28 weeks
B) 26 weeks
C) 40 weeks
D) 24 weeks
= A
? Path A-B-C-E-G = 4 + 6 + 8 + 6 + 4 = 28 weeks; path A-B-D-F-G = 4 + 6 + 5 + 7 + 4 = 26 weeks. The critical path is A-B-C-E-G, so the duration is 28 weeks.

@@ PR4 | Predictive
The utilities crew is needed urgently on another site and could start activity D two weeks later than its early start. What is the effect on the project end date if nothing else changes?
A) None, because the D-F path has two weeks of float
B) The end date moves out by two weeks, since D is delayed
C) The end date moves out by one week, half of the delay
D) None, because D is on the critical path
= A
? Path A-B-D-F-G is 26 weeks against a 28-week critical path, so D and F share two weeks of total float. A two-week delay to D uses all of it without delaying the end date.

@@ PR9 | Predictive
How should the project manager describe the project's performance at week 12?
A) Behind schedule (SPI 0.90) and under budget (CPI 1.04)
B) Ahead of schedule (SPI 1.11) and over budget (CPI 0.96)
C) Behind schedule (SPI 0.90) and over budget (CPI 0.96)
D) On schedule and on budget, since the variances are small
= A
? SPI = 2.7 / 3.0 = 0.90 (behind schedule); CPI = 2.7 / 2.6 ≈ 1.04 (under budget).

@@ PR6 | Predictive
If the current cost performance continues, what is the estimate at completion?
A) About $8.67 million
B) About $9.36 million
C) About $10.0 million
D) About $8.10 million
= A
? EAC = BAC / CPI = 9.0 / 1.0385 ≈ $8.67 million. The project is forecast to finish slightly under budget, although it is behind schedule.
%% END CASE

@@ PR1 | Agile
A company wants to build an AI-based scheduling assistant. Nobody knows yet which features users will value or how accurate the models can become. Which approach is most suitable?
A) An adaptive approach with short iterations, frequent user feedback and experiments
B) A predictive approach with a detailed specification approved before development starts
C) A predictive approach with a single delivery once the models reach full accuracy
D) An approach that delays any development until the market has been fully researched
= A
? High uncertainty about both value and technical feasibility calls for adaptive, experiment-driven delivery that learns quickly from feedback.

@@ PR1 | Predictive
A pharmaceutical manufacturing project must validate its new equipment before production can begin. Where should validation activities appear?
A) In the integrated plan, with scope, schedule, resources and costs for each validation stage
B) In a separate document prepared by the quality department after the installation is finished
C) Nowhere in the project plan, since validation is part of normal production operations
D) In the risk register only, as a risk that the regulator may request validation later on
= A
? Mandatory validation is project work: it must be planned, scheduled and resourced within the integrated project management plan.

@@ PR1 | Hybrid
The PMO requires phase gates, while the development team works in sprints. How should the project manager integrate the two in the plan?
A) Map planned releases to the phase gates and define the evidence each gate needs
B) Ask the team to stop using sprints until the final phase gate has been passed
C) Hold a phase gate at the end of every two-week sprint for the whole project
D) Ignore the phase gates, since they do not apply to agile development teams
= A
? Hybrid plans can align iterative delivery with governance gates by linking releases to gates and agreeing on the evidence (such as working increments and metrics) each gate requires.

@@ PR1 | Predictive
Which subsidiary plan describes how requirements will be analysed, documented, prioritised and managed throughout the project?
A) Requirements management plan
B) Scope management plan
C) Quality management plan
D) Stakeholder engagement plan
= A
? The requirements management plan describes how requirements will be handled; the scope management plan describes how scope will be defined, structured, validated and controlled.

@@ PR1 | Agile
After three sprints of "set-up" work, the new team has delivered no business functionality, and the sponsor is concerned. What should the team do?
A) Deliver a thin, end-to-end slice of functionality in the next sprint
B) Continue the set-up work until the architecture is fully complete
C) Ask the sponsor for two more sprints of set-up before reviewing progress
D) Stop holding sprint reviews until there is functionality to show
= A
? Delivering a thin vertical slice early demonstrates value, validates the architecture and restores stakeholder confidence. Endless set-up delays value and feedback.

@@ PR1 | Predictive
The project manager plans to baseline the schedule before the key stakeholders have reviewed it, to save time. What should the project manager do?
A) Obtain the reviews and approval before baselining
B) Baseline it now and adjust it later through informal updates
C) Baseline it now, since stakeholders rarely change schedules
D) Skip the baseline, since stakeholders will review progress anyway
= A
? A baseline is an approved version of the plan. Setting it before review and approval undermines its value as the reference for performance measurement.

@@ PR1 | Hybrid
A hybrid programme combines vendor deliveries with fixed dates and internal agile releases. How can the project manager give stakeholders one view of the timeline?
A) An integrated roadmap showing vendor milestones and planned releases
B) Separate reports for vendors and agile teams, each in its own format and frequency
C) A detailed Gantt chart that includes every user story as a scheduled activity
D) Only the vendor milestones, since agile release dates are always uncertain
= A
? A high-level integrated view shows key milestones and releases together, including dependencies, without micro-managing the agile work.

@@ PR1 | Predictive | multi
Which two items does a schedule management plan typically define? (Choose two.)
A) Units of measure for durations and resources
B) Control thresholds for schedule variance
C) The list of activities with their durations
D) Resource assignments for each activity
E) The risk register for schedule risks
= A, B
? The schedule management plan sets rules: methodology, units, accuracy, thresholds, performance measurement and reporting. Activities and assignments are part of the schedule itself.

@@ PR2 | Predictive
Users struggle to describe how they want the new booking screens to look and behave. Which elicitation technique would help most?
A) Prototypes or wireframes reviewed with the users
B) A detailed questionnaire sent to all users
C) Benchmarking against competitors' websites
D) Reviewing the existing system's documentation
= A
? Prototypes give users something concrete to react to, which surfaces requirements they find hard to describe in the abstract.

@@ PR2 | Agile
The team wants acceptance criteria that can be turned easily into automated tests. Which format fits best?
A) Given–when–then scenarios describing behaviour with examples
B) A long narrative paragraph describing the feature in general terms
C) A list of the technical tasks needed to build the feature
D) A statement of the estimated story points and the target sprint
= A
? Given–when–then (behaviour-driven) scenarios describe concrete, testable behaviour, making them easy to automate.

@@ PR2 | Hybrid
In a hybrid project, the regulatory specification is baselined, while user-facing features are managed in a backlog. A user requests a change that would alter the regulatory specification. How should it be handled?
A) Through formal change control, since the regulatory specification is baselined
B) Through the product backlog, since all user requests go to the product owner
C) Through the daily stand-up, where the team can agree the change quickly
D) Through informal agreement between the user and the developer involved
= A
? Each part of a hybrid project uses its own change mechanism: baselined, regulated elements need formal change control, while backlog items are prioritised by the product owner.

@@ PR2 | Predictive
The team has decomposed the WBS into hundreds of two-hour tasks, and maintaining it is consuming significant effort. What should the project manager advise?
A) Decompose only to manageable work packages that can be estimated
B) Continue, since more detail always gives the project manager better control
C) Remove the WBS and manage the project only with an activity list
D) Ask the PMO to maintain the WBS on the team's behalf
= A
? Excessive decomposition wastes effort; the WBS should go down to manageable work packages. Activities are defined later from those work packages.

@@ PR2 | Agile
An epic titled "Improve customer self-service" is too vague for the team to estimate. What should the product owner and team do?
A) Explore it, for example with story mapping, and split it into smaller stories
B) Estimate the epic with a very large number of points and start it next sprint
C) Ask the developers to decide what the epic should contain on their own
D) Remove the epic from the backlog until the business can describe it better
= A
? Refinement techniques such as story mapping break vague epics into valuable, estimable stories.

@@ PR2 | Predictive
Who should formally accept deliverables in the Validate Scope process?
A) The customer or sponsor
B) The quality control team
C) The project manager
D) The developers who built them
= A
? Validate Scope obtains formal acceptance from the customer or sponsor. Quality control verifies correctness before validation.

@@ PR2 | Agile
The product owner reviews completed stories only at the sprint review, so problems are found late. The developers ask whether stories can be reviewed earlier. What is the best answer?
A) Yes, the product owner can accept stories as soon as they are done
B) No, stories can only be accepted formally at the sprint review event
C) No, acceptance is the scrum master's responsibility during the sprint
D) Yes, but only if the sponsor approves each story before the review
= A
? Collaboration during the sprint allows early feedback and acceptance; the sprint review then focuses on stakeholder feedback about the increment.

@@ PR2 | Predictive | match
Match each elicitation technique with the situation it suits best.
1) Interviews
2) Focus groups
3) Questionnaires
4) Observation
A) Gathering detailed or confidential information from individual experts
B) Bringing prequalified stakeholders together to discuss expectations
C) Collecting input quickly from a large, dispersed group
D) Understanding a process that users find hard to describe
= 1-A, 2-B, 3-C, 4-D
? Each elicitation technique fits different needs for depth, audience size and the visibility of tacit knowledge.

@@ PR3 | Agile
At the end of a fixed timebox, the team cannot complete everything planned. Using MoSCoW, which items should be dropped first?
A) Won't-have and could-have items
B) Must-have items
C) Should-have items before could-have items
D) The items that are hardest to build
= A
? MoSCoW protects must-haves; could-haves (and won't-haves for this timebox) are the first to be deferred.

@@ PR3 | Predictive
A project aims to reduce customer call-handling time. Which step is essential to demonstrate the benefit later?
A) Measure the current call-handling time before go-live as a baseline
B) Measure only the call-handling time after the new system is live
C) Ask the call-centre managers whether they feel calls became faster
D) Report the number of features delivered by the project at closure
= A
? Without a baseline measurement, an improvement cannot be demonstrated. Benefits plans should define how and when the baseline is measured.

@@ PR3 | Hybrid
A pharmaceutical reporting module is ready for internal users, while external regulatory reporting needs further validation. How can value be delivered sooner?
A) Release it to internal users while external reporting validation continues
B) Wait until both internal and external reporting are validated and release them together
C) Release both internal and external reporting now and complete validation afterwards
D) Cancel the internal release, since it does not meet the regulatory requirements yet
= A
? Releasing the compliant, ready part early delivers value and feedback while regulated parts complete validation.

@@ PR3 | Agile
The product owner is unsure whether a redesigned checkout page will increase sales. What is the best way to find out?
A) Run an A/B test comparing the new and old pages with real users
B) Ask the developers which page they prefer and release that one
C) Release the new page to everyone and assume it is an improvement
D) Wait for a competitor to launch a similar page and copy the results
= A
? Controlled experiments such as A/B tests validate value hypotheses with real user behaviour.

@@ PR3 | Predictive
A bridge design meets all functional requirements but is expensive. The team looks for alternative materials and methods that deliver the same functions at lower cost. What is this technique called?
A) Value engineering
B) Fast tracking
C) Resource levelling
D) Benchmarking
= A
? Value engineering seeks to deliver the required functions at the lowest life-cycle cost without reducing quality.

@@ PR3 | Agile
Customer feedback shows that a planned feature is not needed. The product owner removes it from the backlog. Which principle does this decision best reflect?
A) Focus on value
B) Build an empowered culture
C) Embed quality
D) Integrate sustainability
= A
? Removing work that does not create value maximises the amount of work not done and focuses effort where value is highest.

@@ PR3 | Hybrid
A project will deliver a new customer portal, after which a permanent product team will continue to evolve it. How should the project manager support long-term value?
A) Plan the transition of the backlog, product team and benefit tracking
B) Deliver every possible feature before closure, since the product team will only fix defects
C) Close the project and archive the backlog, since the portal has been delivered to customers
D) Keep the project open indefinitely so that the same team can continue developing the portal
= A
? Projects hand over to products: a planned transition of ownership, backlog and benefit measurement sustains value after closure.

@@ PR3 | Agile | multi
Which two are outcome metrics rather than output metrics? (Choose two.)
A) Reduction in customer support calls
B) Increase in repeat purchases
C) Number of releases per quarter
D) Team velocity per sprint
E) Story points completed per developer
= A, B
? Outcomes measure changes in customer or business results; releases, velocity and story points measure output or activity.

@@ PR4 | Predictive
During a plant shutdown, two activities require the site's only heavy crane at the same time. The activities are on different paths, and one has float. What should the project manager do first?
A) Use the float to schedule one activity after the other
B) Rent a second crane immediately for the whole shutdown
C) Crash both activities so that they finish sooner
D) Ask both crews to share the crane during the same hours
= A
? Using available float to sequence activities resolves the conflict without extending the shutdown or adding cost.

@@ PR4 | Agile
The team has no one with strong database skills, and several upcoming stories depend on them. What should the team consider?
A) Adding the missing skill or cross-training team members
B) Skipping the database stories until the release is over
C) Asking the product owner to build the database work
D) Outsourcing the stories without the product owner's knowledge
= A
? Cross-functional teams need the skills to deliver complete increments; adding or developing the missing skill addresses the gap.

@@ PR4 | Hybrid
Vendor engineers will join the internal team on site next month. What should the project manager arrange in advance?
A) Onboarding, including access, tools, safety induction and team agreements
B) Nothing, since vendors are responsible for their own staff's onboarding
C) A separate work area so that vendor staff do not disturb the internal team
D) Daily reports from each vendor engineer to the project manager
= A
? Integrating external resources requires practical onboarding so they can contribute safely and effectively from day one.

@@ PR4 | Predictive
Rented equipment has been idle on site for three weeks because preceding work is delayed. What should the project manager do?
A) Evaluate returning and re-renting it, based on cost and availability
B) Keep the equipment, since returning it would show that the plan was wrong
C) Ask the team to find any work the equipment can do so that it is not idle
D) Report the idle time only at project closure in the lessons learned
= A
? Monitoring physical resources includes acting on idle or wasted resources using cost-benefit analysis.

@@ PR4 | Agile
The product owner asks the team to work two weekends to finish extra features before a trade show. What should the scrum master do?
A) Discuss capacity and priorities to fit the most important features
B) Agree, since short bursts of overtime are part of agile delivery
C) Refuse outright, since agile teams never work outside their normal hours
D) Ask the developers to vote and accept the majority decision
= A
? Sustainable pace and capacity-based planning come first; re-prioritising scope is preferable to routine overtime.

@@ PR4 | Hybrid
Two teams share a single hardware test rig, and conflicts over its use are delaying both. What should the project manager do?
A) Make the rig schedule visible and agree on a booking approach with both teams
B) Give the rig to the team with the higher-priority work for the next month
C) Let the teams resolve the conflicts each day on a first-come, first-served basis
D) Buy a second rig immediately without analysing costs or utilisation
= A
? Visual scheduling and an agreed allocation approach resolve shared-resource conflicts; buying more equipment is a later option after analysis.

@@ PR5 | Predictive
The organisation needs a consultant to start next week, before a detailed statement of work can be written. Which contract type is most appropriate?
A) Time and materials with a not-to-exceed limit
B) Firm fixed price for the whole engagement
C) Fixed price incentive fee with a ceiling
D) Fixed price with economic price adjustment
= A
? T&M contracts suit work that must start before scope is defined; a not-to-exceed limit controls the buyer's cost exposure.

@@ PR5 | Agile
A buyer is contracting an agile vendor for a new product. How should acceptance be defined in the contract?
A) Per increment, against acceptance criteria and a definition of done
B) Only once, at the end, against a fixed specification of all features
C) By the vendor alone, based on its internal testing of each feature
D) By the buyer's finance department, based on hours invoiced
= A
? Agile contracts support incremental acceptance using agreed criteria and a definition of done, aligning payment with delivered value.

@@ PR5 | Predictive
What is the main purpose of holding a bidder conference?
A) To give all prospective sellers the same understanding
B) To negotiate final prices and terms with the preferred seller
C) To evaluate and score the technical proposals that were received
D) To award the contract to the seller with the highest overall score
= A
? Bidder conferences give all prospective sellers the same information before proposals are prepared, supporting fairness.

@@ PR5 | Hybrid
The project will procure a cloud hosting service for a critical system. Which contract element is most important to define?
A) Service levels for availability, support and data protection
B) The vendor's internal organisation chart and reporting lines
C) The colour scheme and layout of the vendor's administration console
D) The vendor's annual marketing plan and advertising budget
= A
? For critical services, SLAs define measurable obligations on availability, response times and data protection.

@@ PR5 | Predictive
A seller claims that a government-imposed lockdown prevented it from delivering on time and invokes the force majeure clause. What should the project manager do?
A) Review the clause with legal and discuss the impact with the seller
B) Reject the claim immediately, since delays are always the seller's responsibility
C) Accept the claim without review, since lockdowns are always force majeure events
D) Terminate the contract for cause on the basis of the late delivery alone
= A
? Whether force majeure applies depends on the contract wording. Legal review and discussion with the seller come before any decision.

@@ PR5 | Predictive
A company is deciding whether to outsource the development of the algorithm that differentiates its main product from competitors. What does a make-or-buy analysis most likely recommend?
A) Develop it in-house to protect core competency and IP
B) Buy it from the cheapest supplier, since cost is the only relevant factor
C) Outsource it, since external suppliers always have better specialists
D) Ask the competitor to license its algorithm to the company
= A
? Make-or-buy analysis considers strategic factors such as core competencies and intellectual property, not just cost.

@@ PR5 | Agile | fill
A fixed price incentive fee contract has a target cost of $500,000, a target price of $550,000, a ceiling price of $600,000 and a buyer share ratio of 80%. What is the point of total assumption? (Answer in dollars.)
= $562,500
? PTA = (ceiling price − target price) / buyer share + target cost = (600,000 − 550,000) / 0.80 + 500,000 = 62,500 + 500,000 = $562,500.

@@ PR6 | Predictive
In detailed planning, the project manager prepares a bottom-up estimate based on complete design drawings. What accuracy range is typical for such a definitive estimate?
A) −5% to +10%
B) −25% to +75%
C) −50% to +100%
D) −10% to +25%
= A
? Definitive estimates, prepared with detailed information, typically range from −5% to +10%. ROM estimates range from −25% to +75%.

@@ PR6 | Predictive
The cost variance has been negative and growing for three months. What should the project manager do first?
A) Analyse the root causes of the variance
B) Request additional budget from the sponsor
C) Reduce the scope of the remaining work
D) Reprimand the team for overspending
= A
? Understanding the causes comes before selecting corrective actions such as scope changes or funding requests.

@@ PR6 | Agile
An agile team costs $50,000 per sprint and completes about 25 story points per sprint. The remaining backlog is 400 points. What is the estimated cost to complete?
A) $800,000
B) $500,000
C) $1,000,000
D) $640,000
= A
? Cost per point = 50,000 / 25 = $2,000. 400 points × $2,000 = $800,000 (equivalently, 16 sprints × $50,000).

@@ PR6 | Hybrid
Several identified risks with allocated contingency have passed without occurring. What should the project manager do with the related contingency reserve?
A) Release or reallocate it per the plan's reserve rules
B) Keep it, since another risk might use it later in the project
C) Spend it on additional features requested by stakeholders
D) Transfer it to the management reserve without any approval
= A
? Reserve analysis compares remaining reserves with remaining risk; reserves for retired risks are released or reallocated per the plan.

@@ PR6 | Predictive
An investment of $100,000 returns $30,000 in year 1, $40,000 in year 2 and $50,000 in year 3. What is the simple payback period?
A) 2.6 years
B) 3.0 years
C) 2.5 years
D) 3.3 years
= A
? After two years, $70,000 has been recovered; the remaining $30,000 is 60% of year 3's $50,000. Payback = 2 + 0.6 = 2.6 years.

@@ PR6 | Predictive
Three projects have these benefit-cost ratios: Project X 1.4, Project Y 0.9, Project Z 2.1. Based only on BCR, which project is most attractive?
A) Project Z
B) Project X
C) Project Y
D) None of them
= A
? A higher BCR means greater benefits per unit of cost; a BCR below 1 means costs exceed benefits.

@@ PR6 | Hybrid
The organisation funds a large hybrid project in stages, releasing money only after each phase gate. What is the main advantage of this approach?
A) Limits financial exposure by reviewing value before investing more
B) Guarantees that the project will finish under its approved budget
C) Removes the need for a cost baseline in each phase of the project
D) Allows the team to spend freely without tracking actual costs
= A
? Incremental funding ties investment to demonstrated progress and value, reducing exposure if the project should change or stop.

@@ PR7 | Predictive
A pharmaceutical plant must confirm that each batch meets specifications without testing every tablet. What should the quality plan specify?
A) Statistical sampling with acceptance criteria
B) Testing of every tablet in each batch produced
C) Visual inspection of the packaging and labels only
D) Testing only when customers report a problem
= A
? Statistical sampling provides confidence in batch quality when 100% testing is impractical or destructive.

@@ PR7 | Agile
After a security incident, the team wants every increment to be checked for known vulnerabilities. Where should this check be defined?
A) In the definition of done
B) In the sprint retrospective notes
C) In the product vision statement
D) In the stakeholder register
= A
? Quality and security criteria that apply to every increment belong in the definition of done.

@@ PR7 | Hybrid
Defects in a production line seem to have many possible causes: machines, materials, methods and people. Which tool helps the team structure the analysis of potential causes?
A) Cause-and-effect diagram
B) Iteration burndown chart
C) Project milestone chart
D) Stakeholder salience cube
= A
? A fishbone diagram organises potential causes into categories, supporting root-cause analysis.

@@ PR7 | Predictive
A process is in statistical control, but the customer's specification limits are narrower than the process's control limits. What does this indicate?
A) The process is stable but will produce some out-of-spec output
B) The process is out of control and must be stopped immediately
C) The specification limits must be widened to match the control limits
D) The control limits were calculated incorrectly by the quality team
= A
? A stable process can still be incapable of meeting tighter customer specifications; process improvement is needed to reduce variation.

@@ PR7 | Agile
The minimum viable product will have fewer features and a simpler design than the final product. Does this mean lower quality?
A) No; it is lower grade, but it must still meet its quality requirements
B) Yes; minimum viable products are expected to contain many defects
C) Yes; quality is measured by the number of features delivered
D) No; minimum viable products are never tested by the team
= A
? Fewer features means lower grade, which can be acceptable. Quality — meeting requirements and fitness for purpose — still matters.

@@ PR7 | Predictive
What is the primary purpose of a quality audit?
A) To check that project activities comply with policies and procedures
B) To inspect each deliverable and record all of the defects that are found
C) To calculate the total cost of quality for the project's deliverables
D) To decide which team member caused each defect and how to address it
= A
? Quality audits examine processes for compliance and improvement opportunities; inspection of deliverables is quality control.

@@ PR7 | Hybrid | multi
Which two activities are part of quality assurance rather than quality control? (Choose two.)
A) A process audit
B) Process analysis
C) Inspecting a finished part
D) Testing a software build
E) Measuring weld thickness
= A, B
? Quality assurance focuses on processes (audits, analysis); quality control inspects and tests deliverables.

@@ PR8 | Predictive
Two sequential activities on the critical path have PERT standard deviations of 3 days and 4 days. What is the standard deviation of the path made up of these two activities?
A) 5 days
B) 7 days
C) 12 days
D) 3.5 days
= A
? Add the variances (9 + 16 = 25) and take the square root: √25 = 5 days.

@@ PR8 | Agile
A team has 200 story points remaining. Its velocity ranges between 20 and 25 points per sprint. What forecast should the team give?
A) Between 8 and 10 sprints
B) Exactly 9 sprints
C) Between 5 and 8 sprints
D) Exactly 10 sprints
= A
? 200 / 25 = 8 sprints at the high end and 200 / 20 = 10 sprints at the low end. A range communicates uncertainty honestly.

@@ PR8 | Predictive
After painting, walls must dry for three days before the floor can be installed. How should this be represented?
A) A three-day lag between painting and floor installation
B) A three-day lead between painting and floor installation
C) Three days of free float on the painting activity
D) A start-to-start relationship between the two activities
= A
? A lag is a required waiting time between a predecessor and its successor.

@@ PR8 | Hybrid
A vendor-supplied component on the critical path will arrive two weeks late. The vendor offers to expedite it for an extra fee. The release date is fixed. What should the project manager do?
A) Weigh the fee against the delay's impact and seek approval if justified
B) Accept the two-week delay without informing stakeholders of the impact
C) Pay the fee immediately without analysing whether it is justified
D) Ask the agile teams to absorb the delay by working overtime
= A
? Expediting is a form of crashing; its cost should be weighed against the delay's impact and approved per governance.

@@ PR8 | Predictive
In critical chain scheduling, where is a feeding buffer placed?
A) Where a non-critical chain joins the critical chain
B) At the end of the critical chain, before completion
C) Before every activity on the critical chain
D) At the very start of the project, before any activity
= A
? Feeding buffers protect the critical chain from delays in the chains that feed into it; the project buffer sits at the end of the critical chain.

@@ PR8 | Agile
A Kanban team's cycle time has doubled over two months, while throughput is unchanged. What is the most likely cause and response?
A) WIP has increased; lower the WIP limits
B) The team has become slower; add more developers
C) The backlog is too small; add more items to it
D) Estimates are wrong; switch to story points
= A
? By Little's Law, with stable throughput, longer cycle time means more WIP. Reducing WIP limits shortens cycle time.

@@ PR8 | Predictive
The sponsor wants a one-page schedule for the board that shows only the dates of key events. What should the project manager provide?
A) A milestone chart
B) A detailed network diagram
C) The full activity list
D) A resource histogram
= A
? Milestone charts show key events and dates without detail, which suits executive audiences.

@@ PR9 | Agile
In the middle of a sprint, the burndown chart suddenly goes up. What is the most likely explanation?
A) Work was added or tasks were re-estimated upward
B) The team completed more work than it had planned
C) The team stopped updating the chart for a few days
D) The sprint length was reduced by the scrum master
= A
? An upward movement in a burndown means remaining work increased — through added scope or re-estimation — which should be discussed with the team.

@@ PR9 | Predictive
The original estimates proved flawed because the ground conditions were very different from those assumed. Which EAC calculation is most appropriate?
A) AC plus a bottom-up estimate to complete
B) BAC divided by the cumulative CPI
C) AC plus the remaining budget (BAC − EV)
D) BAC divided by the cumulative SPI
= A
? When the basis of the original estimate is invalid, the remaining work is re-estimated bottom-up.

@@ PR9 | Hybrid
A vendor reports its work as green each week, but integration tests with the vendor's components keep failing. What should the project manager do?
A) Verify progress against objective evidence and discuss it with the vendor
B) Accept the vendor's reports, since the vendor knows its own work best
C) Stop the integration tests until the vendor reports a different status
D) Report the vendor's status as red to the steering committee without discussion
= A
? Status should be based on objective evidence. Discrepancies are raised with the vendor through the contract relationship.

@@ PR9 | Agile
A Kanban team's throughput chart shows a sharp drop over the last two weeks. What should the team do?
A) Investigate causes such as blockers or larger items
B) Ignore it, since throughput always varies from week to week
C) Add more items to the board to raise throughput
D) Report each member's throughput separately
= A
? A sharp change in a flow metric is a signal to inspect and adapt, starting with understanding the cause.

@@ PR9 | Predictive
What is the difference between variance analysis and trend analysis?
A) Variance compares plan and actual at a point; trend analysis looks at performance over time
B) Variance analysis forecasts the future; trend analysis looks only at the current reporting period
C) Variance analysis is used only for costs; trend analysis is used only for schedules
D) They are the same technique described with two different names in the PMBOK Guide
= A
? Variance analysis looks at the difference between plan and actual; trend analysis looks at how performance changes over time to predict future results.

@@ PR9 | Hybrid | match
Match each chart with what it shows.
1) Burndown chart
2) Burnup chart
3) Cumulative flow diagram
4) S-curve
A) Remaining work over time
B) Completed work against total scope over time
C) Quantity of work in each state of the workflow over time
D) Cumulative planned or actual cost over time
= 1-A, 2-B, 3-C, 4-D
? Each chart answers a different question about progress, scope, flow or cost.

@@ PR10 | Predictive
A pharmaceutical project is closing. Regulations require validation records to be retained for 10 years. What should the project manager ensure?
A) Archive them according to the retention requirements
B) The records are deleted, since the validation has already been approved
C) The records are given to the vendor to keep on the company's behalf
D) The records are stored on the project manager's personal drive
= A
? Closure includes archiving records according to legal and organisational retention requirements.

@@ PR10 | Agile
At the end of a product release, the team holds a final retrospective. How can the organisation benefit beyond the team?
A) Share key lessons with other teams and the PMO
B) Keep the retrospective notes confidential within the team
C) Use the retrospective to rate each team member's performance
D) Discard the notes, since the team is moving to new work
= A
? Sharing lessons beyond the team turns local learning into organisational learning.

@@ PR10 | Hybrid
Before closing the hardware contract, what should the buyer verify?
A) That deliverables are accepted and invoices and claims settled
B) That the vendor's staff have been released to other customers
C) That the vendor has submitted a proposal for the next project
D) That the agile software team has finished all its sprints
= A
? Contract closure requires confirming completed and accepted work and settled financial matters before formal notice of completion.

@@ PR10 | Predictive
At closure, three minor defects remain open, and the customer has agreed that operations will fix them. What should the project manager do?
A) Document their agreed transfer to an operations owner
B) Keep the project open until all three defects are fixed
C) Close the project without recording the open defects
D) Ask the team to fix the defects after the project closes
= A
? Open items can be transferred with clear ownership and documentation, as agreed with the customer.

@@ PR10 | Predictive
The buyer terminates a construction contract for convenience halfway through. What is the seller typically entitled to under such a clause?
A) Payment for work done and agreed costs, as the contract defines
B) The full contract price, as if all the work had been completed
C) Nothing at all, since the contract has been terminated by the buyer
D) Damages for breach of contract caused by the buyer's decision
= A
? Termination for convenience clauses usually compensate the seller for work done and specified costs; it is not a breach.

@@ PR10 | Agile | multi
A product release is being closed and the team will move to another product. Which two activities are appropriate? (Choose two.)
A) Hand over support responsibilities to the operations team
B) Recognise the team's contribution before members move on
C) Delete the repository, since development has ended
D) Skip the final retrospective to save time
E) Keep the team on the project until new requests arrive
= A, B
? Closure includes a planned handover and recognition of the team. Deleting assets or skipping reflection loses value.
