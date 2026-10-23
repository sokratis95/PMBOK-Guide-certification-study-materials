%% CASE Harbourview Hospital patient portal
Harbourview Hospital is running a hybrid project to launch a patient portal. The **portal software** is built by an agile team in two-week sprints. The **data-centre infrastructure upgrade** that the portal depends on is managed predictively with a baselined schedule and a fixed-price contract for the hardware.

Status at the end of month 6 (of a planned 12):

| Measure | Value |
|---|---|
| Budget at completion (BAC) | $2,400,000 |
| Planned value (PV) | $1,200,000 |
| Earned value (EV) | $1,080,000 |
| Actual cost (AC) | $1,350,000 |

The infrastructure upgrade is on the critical path and is two weeks behind. The sponsor insists that the go-live date, announced publicly, must not move, and has approved additional funds if they are needed to protect it.
@@ PR6 | Hybrid
What is the project's cost performance index (CPI)?
A) 0.80
B) 0.90
C) 1.25
D) 0.89
= A
? CPI = EV / AC = 1,080,000 / 1,350,000 = 0.80. The project is getting 80 cents of value for every dollar spent.

@@ PR9 | Hybrid
How should the project manager describe the project's status to the steering committee?
A) Over budget and behind schedule, with CPI 0.80 and SPI 0.90
B) Under budget and behind schedule, with CPI 1.25 and SPI 0.90
C) Over budget but ahead of schedule, with CPI 0.80 and SPI 1.11
D) On budget and on schedule, since half of the time has elapsed
= A
? SPI = EV / PV = 1,080,000 / 1,200,000 = 0.90 (behind schedule) and CPI = 0.80 (over budget). Status reports must present both dimensions accurately.

@@ PR6 | Hybrid | fill
Assuming the current cost performance continues, what is the estimate at completion (EAC)? (Answer in dollars.)
= $3,000,000
? EAC = BAC / CPI = 2,400,000 / 0.80 = $3,000,000, an expected overrun of $600,000 that must be reported with options.

@@ PR8 | Hybrid
Which schedule compression approach should the project manager consider first for the infrastructure upgrade?
A) Crash critical-path infrastructure activities by adding resources, using the approved funds
B) Fast-track the portal's user acceptance testing in parallel with the hardware installation
C) Apply resource smoothing to the infrastructure activities that are on the critical path
D) Remove the remaining portal features from the release so that the date can be met
= A
? The delay is on the critical path, the sponsor has approved funds, and the date is fixed, so crashing critical activities is appropriate. Fast-tracking testing with installation adds rework risk in a hospital setting, smoothing does not shorten the critical path, and cutting features does not address the infrastructure delay.
%% END CASE

@@ PR1 | Predictive
A manufacturer is planning a new production line. The specifications are complete and approved, changes after installation would be extremely expensive, and strict safety certification is required. Which development approach best fits?
A) Predictive, with detailed up-front planning and formal change control
B) Adaptive, with two-week sprints and a product owner representing operations
C) Kanban, with continuous flow of installation tasks through a visual board
D) Hybrid, using sprints for every deliverable and stage gates for funding only
= A
? Stable requirements, a high cost of change and strict certification favour a predictive approach. Adaptive or flow-based approaches add little value when the scope is fixed and changes are costly.

@@ PR1 | Hybrid
In a hybrid project, the software team works from a release plan while the facilities team follows a detailed milestone schedule. What should the project manager do to integrate the two plans?
A) Identify the dependencies and integration points and align releases with the milestones
B) Convert the software release plan into a detailed Gantt chart so both use one format
C) Let each team manage its own plan and resolve conflicts when integration testing starts
D) Ask the facilities team to adopt sprints so that both teams share the same planning cadence
= A
? Integration in hybrid projects is achieved by managing dependencies and synchronising key points, not by forcing one method on both teams or waiting until problems surface.

@@ PR1 | Predictive
The sponsor asks for a fully detailed schedule for all three phases of a two-year project. Phase 2 and 3 requirements depend on the results of phase 1. What should the project manager propose?
A) Rolling wave planning: detail phase 1 now and elaborate later phases as information emerges
B) A fully detailed schedule for all phases, using assumptions that can be corrected later on
C) No schedule beyond phase 1 until its results are known, to avoid any wasted planning effort
D) A detailed schedule for phase 3 first, since the final deliverables are the most important
= A
? Rolling wave planning details near-term work and keeps later work at a higher level, refining it progressively. A fully detailed plan built on guesses creates false precision; no plan at all leaves stakeholders without a roadmap.

@@ PR1 | Agile
The product owner wants to give stakeholders an idea of which features will be available in the first release, three months from now. What should the team do?
A) Hold release planning using the prioritised backlog and the team's velocity
B) Produce a detailed task-level schedule for every feature in the backlog
C) Let the product owner promise the stakeholders the features they ask for most
D) Wait until the end of the release to see which features were actually completed
= A
? Release planning uses backlog priorities and empirical velocity to forecast what is likely to be delivered. Detailed task schedules are premature, and promises without data or waiting until the end mismanage expectations.

@@ PR1 | Predictive
The project management plan has just been approved by the sponsor. What should the project manager do next?
A) Hold a kickoff meeting to align stakeholders and the team on objectives, roles and the plan
B) Start executing work packages immediately to make up for time spent on planning activities
C) Email the approved plan to all stakeholders and ask them to confirm they have read it
D) Re-estimate all activities so that the plan reflects the latest available information
= A
? The kickoff meeting launches execution by communicating objectives and roles and gaining commitment. Emailing the plan is one-way communication; immediate re-estimation is unnecessary.

@@ PR1 | Predictive | multi
Which two items are components of the project management plan? (Choose two.)
A) Schedule baseline
B) Change management plan
C) Issue log
D) Risk register
E) Stakeholder register
= A, B
? Baselines and subsidiary plans, including the change management plan, are components of the project management plan. Logs and registers are project documents.

@@ PR1 | Hybrid
On a medical device software project, the team proposes dropping the configuration management plan because "agile teams don't need it". What should the project manager do?
A) Explain the regulatory need and tailor a lean but compliant configuration approach
B) Agree, since agile values working software over comprehensive documentation and plans
C) Insist on the organisation's full configuration template without any adaptation at all
D) Ask the regulator whether configuration management can be skipped for this one project
= A
? Tailoring must respect mandatory requirements. Regulated products need controlled configurations; the PM works with the team to make the approach efficient while keeping compliance.

@@ PR1 | Hybrid
Two months before go-live, the project manager realises that the baselined plan contains no activities for data migration or end-user training. What should the project manager do?
A) Plan the missing transition activities, assess their impact and submit a change request
B) Ask the operations team to handle migration and training after go-live on their own
C) Add the activities to the schedule directly, since they are obviously needed for go-live
D) Postpone go-live until a completely new project plan has been developed and approved
= A
? Transition activities are part of planning delivery. Because the plan is baselined, adding work with schedule and cost impact goes through change control after impact analysis.

@@ PR2 | Predictive
A project must collect priorities for a new HR system from 3,000 employees in 15 countries within two weeks. Which elicitation technique is most suitable?
A) A questionnaire or survey
B) One-to-one interviews with every employee
C) A single facilitated workshop with all employees
D) Job shadowing in each country
= A
? Surveys reach large, dispersed audiences quickly and produce data that can be analysed statistically. Interviews and shadowing do not scale, and a 3,000-person workshop is impractical.

@@ PR2 | Agile
A user story is estimated at 40 points, while the team usually completes about 30 points per sprint. What should happen during backlog refinement?
A) Split the story into smaller stories that each still deliver user value
B) Keep the story intact and plan to carry it over two consecutive sprints
C) Split the story into technical layers such as database, API and user interface
D) Ask the product owner to remove the story because it is too large to deliver
= A
? Large stories should be split into smaller, independently valuable slices (for example, by workflow step or data variation). Splitting by technical layer produces items that deliver no value on their own.

@@ PR2 | Predictive
A deliverable passed quality control, but the customer refuses to sign the acceptance form, saying it does not meet requirement 4.2. The traceability matrix shows requirement 4.2 was implemented and tested as documented. What should the project manager do?
A) Review requirement 4.2 and its acceptance criteria with the customer, using change control if needed
B) Insist that the customer signs the form, since the documentation proves the requirement was met in full
C) Modify the deliverable immediately to match the customer's new interpretation of the requirement
D) Escalate the customer's refusal to the sponsor and ask the sponsor to have the deliverable accepted
= A
? The first step is to clarify the requirement and acceptance criteria with the customer. If the customer's need has changed, the modification is a change request; reworking without control or forcing acceptance damages the relationship.

@@ PR2 | Hybrid
Developers on the predictive, contract-based part of a hybrid project have been adding small improvements requested informally by users. The contract has a fixed scope. What should the project manager do?
A) Stop the informal additions and route requests through change control
B) Allow the additions to continue, since small improvements keep the users satisfied
C) Record the additions in the lessons learned register and review them at closure
D) Ask the users to send future requests directly to the vendor's account manager
= A
? Uncontrolled additions are scope creep, especially risky under a fixed-scope contract. Requests should be evaluated through change control so that impacts and contract implications are considered.

@@ PR2 | Predictive
While developing the WBS for a warehouse project, the team lists items such as "pour concrete", "inspect rebar" and "order steel". What should the project manager advise?
A) Organise the WBS by deliverables and define these activities later in the schedule
B) Keep the list as it is, since a WBS lists activities in the order in which they are performed
C) Add start and finish dates to each item so the WBS can serve as the project schedule
D) Remove the inspection item, since quality control activities never belong in a WBS structure
= A
? The WBS is a deliverable-oriented decomposition of scope. Activities are derived from work packages when the schedule is developed.

@@ PR2 | Agile
The product owner rejects a story although it meets all of its acceptance criteria, because no automated tests were written. The team's definition of done requires automated tests. What is correct?
A) The story is not done until it meets the definition of done, including automated tests
B) The story is done because it meets its acceptance criteria, which are the only criteria
C) The product owner should waive the definition of done for this story to protect velocity
D) The tests can be written in a later sprint while the story is counted as done now
= A
? A story is done only when it meets both its acceptance criteria and the team's definition of done. Waiving the DoD creates hidden technical debt.

@@ PR2 | Predictive | match
Match each scope artifact with its description.
1) Project scope statement
2) Work breakdown structure
3) WBS dictionary
4) Requirements traceability matrix
A) Describes deliverables, acceptance criteria and exclusions
B) Hierarchical decomposition of the total scope of work
C) Detailed information about each component of the decomposition
D) Links each requirement to its origin and to the tests that verify it
= 1-A, 2-B, 3-C, 4-D
? The scope statement, WBS and WBS dictionary form the scope baseline; the RTM traces requirements from their origin to delivery and testing.

@@ PR2 | Agile
Sprint planning sessions regularly last much longer than planned because many backlog items are unclear and unestimated. What should the team do?
A) Hold regular backlog refinement and agree on a definition of ready
B) Extend the sprint planning timebox to two full days for each sprint
C) Ask the product owner to write detailed specifications for every backlog item
D) Let the scrum master clarify and estimate the items before each planning session
= A
? Ongoing refinement and a definition of ready ensure items are understood before planning. Longer planning, heavy specifications or estimates by someone other than the team do not solve the problem.

@@ PR3 | Agile
A product owner uses weighted shortest job first (WSJF = cost of delay ÷ job size) to order four features: Feature 1 (cost of delay 20, size 10), Feature 2 (cost of delay 12, size 3), Feature 3 (cost of delay 30, size 20), Feature 4 (cost of delay 8, size 8). Which feature should be done first?
A) Feature 2
B) Feature 1
C) Feature 3
D) Feature 4
= A
? WSJF scores: Feature 1 = 2.0; Feature 2 = 4.0; Feature 3 = 1.5; Feature 4 = 1.0. Feature 2 has the highest score, so it delivers the most value per unit of effort.

@@ PR3 | Hybrid
Demand for a new subscription service is highly uncertain, but the sponsor wants to build the complete product before launch. What should the project manager recommend?
A) Release a minimum viable product to validate demand before investing in the full product
B) Build the complete product as requested, since the sponsor has approved the full budget
C) Postpone the project until a market study provides certainty about customer demand
D) Launch the complete product in one region first, then roll it out to other regions
= A
? An MVP validates the key assumption — demand — with minimal investment, reducing the risk of building something customers do not want. A regional roll-out of the full product still invests in everything before learning.

@@ PR3 | Predictive
A project aims to reduce invoice processing time. How should the project manager ensure that the value of the project can be demonstrated?
A) Agree baseline and target KPIs in the benefits plan and measure them after go-live
B) Report that the project delivered all of its deliverables on time and within the budget
C) Ask users at closure whether they think processing has become faster with the new system
D) Measure the number of system features delivered compared with the original plan
= A
? Value is demonstrated by measuring outcomes against a baseline, with a benefit owner continuing measurement after go-live. Delivery metrics and opinions do not prove the benefit.

@@ PR3 | Agile
Analytics show that a feature delivered three sprints ago is used by fewer than 2% of customers. Two further enhancements to it are in the backlog. What should the product owner consider?
A) Re-examining the enhancements and reprioritising toward higher-value items
B) Delivering both enhancements quickly, since the feature has already been started
C) Removing the analytics, since usage data does not reflect the true value of features
D) Asking the team to promote the feature to customers in their spare time
= A
? Usage data is evidence about value. Continuing to invest in a little-used feature because work has started is sunk-cost thinking.

@@ PR3 | Predictive
A hospital building is being constructed floor by floor. The client could start using completed floors months before the whole building is finished. What should the project manager consider?
A) Planning a phased handover of completed floors where safety and regulations allow
B) Keeping the original single handover, since predictive projects deliver value only at the end
C) Asking the contractor to finish all floors faster so that one handover still works
D) Asking the client to wait, since partial handovers always increase the project's risk
= A
? Even in predictive projects, delivering usable increments early can realise value sooner. Safety and regulatory conditions must be satisfied before each handover.

@@ PR3 | Agile
A team's lead time from idea to production averages 90 days, but development work takes only about 10 of those days. Which technique would best help find where value is being lost?
A) Value stream mapping
B) Planning poker
C) Resource levelling
D) Earned value analysis
= A
? Value stream mapping visualises each step and the waiting time between steps, revealing delays and waste in the end-to-end flow.

@@ PR3 | Hybrid
The product owner wants only new features in every sprint, but accumulated technical debt is visibly slowing the team down. What should the project manager do?
A) Make the debt and its impact visible so the product owner can prioritise it
B) Ask the team to fix technical debt secretly in addition to their committed work
C) Insist that the next three sprints address only technical debt and no new features
D) Accept the situation, since the product owner decides what is valuable
= A
? Transparency allows the product owner to make an informed value decision, balancing features with debt reduction. Hidden work and unilateral decisions undermine trust.

@@ PR3 | Agile | multi
Which two metrics best indicate the value a new online-banking feature is delivering? (Choose two.)
A) Percentage of active customers using the feature
B) Change in successful online transactions per customer
C) Number of story points completed for the feature
D) Number of hours the team worked on the feature
E) Number of meetings held about the feature
= A, B
? Adoption and business outcomes measure value. Story points, hours and meetings measure activity, not value.

@@ PR4 | Predictive
A resource histogram shows a structural engineer allocated at 150% in weeks 5–7. The activities involved have several days of float. What should the project manager do first?
A) Apply resource smoothing within the available float
B) Apply resource levelling and extend the project end date
C) Crash the activities by adding another engineer at overtime rates
D) Ask the engineer to work overtime during those three weeks
= A
? When activities have float, resource smoothing can resolve over-allocation without changing the critical path or end date. Levelling may extend the schedule unnecessarily, and overtime is not a sustainable first choice.

@@ PR4 | Agile
Two of the six developers will be on holiday during the next sprint. How should the team approach sprint planning?
A) Plan the sprint based on the reduced capacity and select less work accordingly
B) Plan the usual amount of work and ask the remaining developers to work overtime
C) Postpone the sprint until all developers are back from their holidays
D) Ask the product owner to lower the definition of done for this sprint only
= A
? Capacity planning adjusts the amount of work to the people available, keeping a sustainable pace and quality.

@@ PR4 | Predictive
A supplier informs the team that steel deliveries will be one week late. What should the project manager do first?
A) Assess the impact on the schedule, including float and the critical path
B) Order the steel from another supplier at a higher price to avoid any delay
C) Inform the sponsor that the project end date will slip by one week
D) Apply the late-delivery penalties defined in the supplier contract
= A
? The first step is to understand the impact: if the affected activities have enough float, the end date may not change. Decisions about alternatives, penalties or communication follow from the analysis.

@@ PR4 | Hybrid
While reviewing the RACI chart for vendor integration, the project manager notices that both the IT architect and the vendor manager are marked "Accountable" for the same activity. What should the project manager do?
A) Agree with them which single person is accountable and update the chart
B) Leave the chart as it is, since shared accountability increases ownership
C) Mark both people as "Responsible" and remove accountability for the activity
D) Make the project manager accountable for every activity in the chart
= A
? Each activity should have exactly one accountable person to avoid confusion about ownership and decisions.

@@ PR4 | Predictive
The project requested an experienced database engineer, but the functional manager offers a junior engineer instead. What should the project manager do?
A) Evaluate the impact on schedule and quality, then negotiate or plan mitigation such as mentoring
B) Reject the junior engineer and wait until an experienced engineer becomes available
C) Accept the junior engineer without changes, since resources are the functional manager's decision
D) Escalate immediately to the sponsor to obtain the experienced engineer that was requested
= A
? When preferred resources are not available, the PM assesses the impact, negotiates and plans mitigation (training, mentoring, adjusted estimates), documenting the decision.

@@ PR4 | Agile
Work frequently piles up waiting for the team's only tester, while developers start new stories. What should the team do?
A) Have developers help with testing and build cross-functional skills
B) Ask the functional manager to hire another tester before the next sprint starts
C) Let developers keep starting new stories so that their productivity stays high
D) Move testing to a separate sprint at the end of each release to avoid the queue
= A
? Swarming on bottlenecks and developing T-shaped skills improve flow. Starting more work increases WIP, and separate testing sprints delay feedback.

@@ PR4 | Hybrid
To reduce inventory costs, the project switched to just-in-time delivery of components. Since then, late deliveries from an unreliable supplier have caused frequent work stoppages. What should the project manager do?
A) Reassess the approach, such as a small safety stock or second supplier, using cost-benefit analysis
B) Continue with just-in-time delivery, since the inventory savings outweigh the cost of the stoppages
C) Return immediately to holding a full inventory of all components for the remainder of the project
D) Ask the team to find other work during stoppages so that the idle time does not appear in reports
= A
? Resource strategies should be adjusted based on evidence. A cost-benefit analysis of safety stock or alternative suppliers balances inventory cost against downtime.

@@ PR5 | Predictive
The organisation needs a standard office network installed in a new building. The scope, specifications and quantities are fully defined. Which contract type is most appropriate?
A) Firm fixed price
B) Cost plus award fee
C) Time and materials
D) Cost plus incentive fee
= A
? When scope is well defined, a firm fixed-price contract is appropriate and places the cost risk on the seller.

@@ PR5 | Agile
A client wants to contract an agile vendor but needs the flexibility to change priorities every sprint and to stop the work once enough value has been delivered. Which contracting approach best fits?
A) Fixed price per sprint with an early cancellation option
B) Firm fixed price for the complete scope defined at the start
C) Cost plus fixed fee with a detailed change approval board
D) A single payment on completion of all the backlog items
= A
? Fixed-price increments with an early cancellation clause support changing priorities and stopping when sufficient value is delivered. A fixed price for the full scope contradicts the need for flexibility.

@@ PR5 | Predictive
A seller has missed two contractual milestones. The contract includes performance reporting and remedy clauses. What should the project manager do first?
A) Review the seller's performance against the contract and agree corrective actions formally
B) Terminate the contract for cause and start a new procurement for the remaining work immediately
C) Withhold all payments until the seller has recovered both of the missed milestones in full
D) Ask the internal team to take over the seller's work without informing the seller of the issue
= A
? Contract administration starts with reviewing performance data and engaging the seller through the formal channel to agree corrections. Termination or withholding payments are later steps that must follow contract terms.

@@ PR5 | Predictive
During proposal evaluation, the project manager learns that one evaluation committee member worked for one of the bidders until last year. What should the project manager do?
A) Ensure the conflict of interest is disclosed and the member does not evaluate that bid
B) Allow the member to continue, since the employment ended more than six months ago anyway
C) Disqualify the bidder, since its former employee is on the evaluation committee
D) Ask the member to give that bidder an average score to avoid any appearance of bias
= A
? Fairness requires disclosure of conflicts of interest and independence in evaluation. Disqualifying the bidder would be unfair to it, and manipulating scores is unethical.

@@ PR5 | Hybrid
Leasing servers costs $2,000 per month. Buying them costs $30,000 plus $500 per month for maintenance. The project needs the servers for 24 months. Which option is cheaper, and why?
A) Buying, because the break-even point is 20 months and the servers are needed for 24
B) Leasing, because the total lease cost over 24 months is lower than the purchase price
C) Buying, because the break-even point is 15 months and the servers are needed for 24
D) Leasing, because the break-even point is 30 months and the servers are needed for 24
= A
? Break-even: 30,000 + 500m = 2,000m → m = 20 months. For 24 months, buying costs 30,000 + 12,000 = $42,000 versus $48,000 for leasing.

@@ PR5 | Predictive | multi
The seller has delivered all contracted items, and the buyer has formally accepted them. Which two activities are needed to close the procurement? (Choose two.)
A) Settle any outstanding claims and make the final payment
B) Send the seller formal written notice that the contract is complete
C) Hold a bidder conference to review the seller's performance
D) Update the procurement statement of work for the next phase
E) Start the make-or-buy analysis for future maintenance work
= A, B
? Closing a contract includes settling claims, final payments, formal notice of completion and archiving records. Bidder conferences and SOW updates belong to other stages.

@@ PR5 | Predictive | fill
A cost plus incentive fee contract has a target cost of $400,000, a target fee of $30,000 and a buyer/seller share ratio of 75/25. The actual cost is $360,000. What is the total amount the buyer pays? (Answer in dollars.)
= $400,000
? Underrun = $40,000; the seller's share = 25% × 40,000 = $10,000; fee = 30,000 + 10,000 = $40,000; total = 360,000 + 40,000 = $400,000.

@@ PR6 | Predictive
A severe flood, which was not identified in the risk register, damages materials on site. Recovery will cost $50,000. What should the project manager do regarding funding?
A) Request use of the management reserve through the agreed governance process
B) Use the contingency reserve, since it exists for any unexpected event on site
C) Absorb the cost by reducing the quality of the remaining work packages
D) Ask the contractor to pay for the damage, since the materials were on its site
= A
? Unidentified risks (unknown-unknowns) are covered by management reserve, which requires management approval and a change to the cost baseline. Contingency reserve is for identified risks.

@@ PR6 | Agile
An agile team costs $45,000 per sprint. The product owner estimates that six more sprints are needed, but only $250,000 of the budget remains. What should the project manager do?
A) Share the $20,000 gap with the sponsor and product owner and discuss options
B) Ask the team to deliver the remaining work in five sprints by increasing its velocity
C) Continue as planned and request additional funds only when the budget runs out
D) Reduce the team size by one developer without informing the product owner
= A
? Six sprints cost $270,000, leaving a $20,000 gap. Early transparency lets decision-makers choose between scope, funding and timing options.

@@ PR6 | Predictive
In the concept phase, the sponsor asks how much a new distribution centre will cost. Little detail exists, but the company built a similar centre three years ago. What should the project manager provide?
A) An analogous estimate based on the earlier centre, presented as a range
B) A bottom-up estimate based on a detailed list of the activities for the new centre
C) A definitive single-figure estimate, since the previous project is very similar
D) No estimate until the design is complete, to avoid committing to a wrong number
= A
? Early estimates use analogous techniques and are expressed as ranges (ROM, about −25% to +75%). Bottom-up and definitive estimates require detail that does not yet exist.

@@ PR6 | Predictive
A project reports a CPI of 1.10 and an SPI of 0.85. How is the project performing?
A) Under budget and behind schedule
B) Over budget and ahead of schedule
C) Under budget and ahead of schedule
D) Over budget and behind schedule
= A
? A CPI above 1 means work is costing less than planned; an SPI below 1 means less work has been completed than planned.

@@ PR6 | Predictive
The to-complete performance index required to finish within the original budget is 1.25. What does this tell the project manager?
A) The remaining work must be done 25% more efficiently than planned, so the BAC is at risk
B) The project is currently 25% under budget and can absorb further scope changes without additional funding
C) The project will finish 25% earlier than planned if the current level of performance continues
D) The project has a 25% chance of finishing within budget according to the latest simulation results
= A
? A TCPI above 1 means future efficiency must exceed planned efficiency. A value of 1.25 is usually unrealistic, so the PM should present a revised forecast and options.

@@ PR6 | Hybrid
The organisation releases project funds quarterly. Planned spending for the third quarter exceeds the funds that will be available. What should the project manager do?
A) Perform funding limit reconciliation and reschedule work to stay within the limit
B) Spend as planned and request emergency funding when the quarterly limit is reached
C) Remove contingency reserves from the third quarter to bring spending within the limit
D) Ask the vendors to accept late payment for the work they complete in that quarter
= A
? Funding limit reconciliation aligns the timing of planned expenditures with funding constraints, which may require moving work.

@@ PR7 | Predictive
A control chart for the thickness of manufactured panels shows seven consecutive measurements below the mean, all within the control limits. What should the project manager do?
A) Investigate the cause, since the pattern suggests the process may be out of control
B) Take no action, since all of the measurements are within the control limits
C) Widen the control limits so that future measurements stay comfortably inside them
D) Reject the panels produced during that period as defective without further analysis
= A
? Under the rule of seven, seven consecutive points on one side of the mean indicate a non-random pattern that should be investigated, even though no point is outside the limits.

@@ PR7 | Agile
The number of defects reported by customers after each release has been rising for three releases. What should the team do?
A) Analyse root causes in the retrospective and strengthen the definition of done and test automation
B) Add a separate testing phase after each release so that defects can be found before customers do
C) Ask the product owner to accept a higher defect rate as the price of delivering faster
D) Assign the defects to the developers who wrote the code and track their individual defect rates
= A
? Escaped defects signal a quality problem in the process. Root-cause analysis and building quality in (DoD, automation) address it; blame and delayed testing do not.

@@ PR7 | Predictive
Warranty claims for a product are high and expensive. Where should the project invest to reduce them most effectively?
A) Prevention, such as design reviews and training
B) Additional inspections of finished products
C) A larger warranty department to handle claims
D) Higher prices to cover the warranty costs
= A
? Warranty claims are external failure costs, the most expensive category. Prevention reduces the defects that cause them; more inspection helps but is less effective than preventing defects.

@@ PR7 | Hybrid
A quality audit finds that developers frequently skip the agreed code-review step before merging changes. What is the most appropriate response?
A) Find out with the team why reviews are skipped and agree on corrective action
B) Ignore the finding, since the product has not yet shown any defects caused by the merges
C) Remove the code-review step from the process, since the team clearly does not value it
D) Report the developers who skipped reviews to their managers for disciplinary action
= A
? Quality audits examine whether processes are followed. The response is to understand the root cause and improve compliance or the process itself.

@@ PR7 | Predictive
For a temporary site office, the client chooses lower-grade materials that fully meet the specified requirements. A team member says this is a quality problem. How should the project manager respond?
A) Explain that low grade is acceptable if requirements are met; low quality is not
B) Agree, since lower-grade materials always lead to lower quality of the deliverable
C) Replace the materials with higher-grade ones to avoid any criticism from the team
D) Ask the client to sign a waiver accepting responsibility for the poor quality
= A
? Grade and quality are different: a low-grade product that meets requirements is acceptable, while failing to meet requirements is a quality problem.

@@ PR7 | Agile
The team has logged 140 defects over the last two releases and wants to know where to focus its improvement effort. Which tool should it use first?
A) Pareto chart
B) Scatter diagram
C) Burnup chart
D) Gantt chart
= A
? A Pareto chart ranks defect categories by frequency, showing the vital few causes responsible for most defects.

@@ PR7 | Predictive | multi
Which two activities are examples of quality control? (Choose two.)
A) Inspecting welds against the specification
B) Testing a sample of finished units
C) Auditing whether the team follows the quality process
D) Analysing the design process for improvement
E) Training workers on the new standard
= A, B
? Quality control inspects and tests deliverables. Audits and process analysis are quality assurance; training is a prevention activity.

@@ PR8 | Predictive
A network has these activities: A (3 days, start), B (4 days, after A), C (6 days, after A), D (2 days, after B), E (3 days, after C and D). What is the project duration, and what does the network imply?
A) 12 days; two critical paths exist, increasing schedule risk
B) 12 days; there is one critical path, A-C-E, and B-D have float
C) 15 days; all of the activities lie on a single critical path
D) 9 days; activity C has three days of float on its path
= A
? Path A-B-D-E = 3 + 4 + 2 + 3 = 12 and path A-C-E = 3 + 6 + 3 = 12. Two critical paths mean a delay on either path delays the project, increasing risk.

@@ PR8 | Predictive
Activities: A (4 days, start), B (2 days, after A), C (6 days, after A), D (3 days, after B), E (2 days, after C and D). What are the total float and free float of activity B?
A) Total float 1 day; free float 0 days
B) Total float 0 days; free float 0 days
C) Total float 1 day; free float 1 day
D) Total float 2 days; free float 1 day
= A
? The critical path is A-C-E (12 days). B runs days 4–6 and D days 6–9, while E starts at day 10. B's late finish is 7, so its total float is 1. Its free float is 0, because D's early start (day 6) equals B's early finish.

@@ PR8 | Agile
A team's velocities over the last three sprints were 18, 24 and 21 points. The remaining backlog for the release is 210 points. How many sprints should be forecast?
A) 10
B) 9
C) 12
D) 8
= A
? Average velocity = (18 + 24 + 21) / 3 = 21 points. 210 / 21 = 10 sprints.

@@ PR8 | Predictive
The project must finish two weeks earlier, and no additional budget is available. The design of the second building and the procurement of its materials were planned in sequence but could partly overlap. What should the project manager do?
A) Fast-track design and procurement and manage the added rework risk
B) Crash the activities by hiring additional designers at premium rates
C) Apply resource smoothing to the design activities within their float
D) Reduce the quality inspections of the second building to save time
= A
? Fast tracking overlaps sequential activities and adds risk but little cost, which matches the constraint of no extra budget. Crashing adds cost; reducing inspections compromises quality.

@@ PR8 | Hybrid
A Monte Carlo simulation shows a 50% probability of finishing by 1 June and an 85% probability of finishing by 22 June. The sponsor wants a date that the organisation can announce with high confidence. What should the project manager recommend?
A) A date around 22 June, explaining the confidence levels behind it
B) 1 June, since it is the most likely completion date for the project
C) A date before 1 June, to motivate the team to work faster
D) No date at all, since simulations cannot predict the future
= A
? Simulation results express confidence levels. An announced date with high confidence should be near the P85 result, with the reasoning communicated transparently.

@@ PR8 | Predictive
The team prefers to finish all design work before starting any coding, although partial overlap is technically possible. How is this dependency best described?
A) Discretionary
B) Mandatory
C) External
D) Lead
= A
? A preferred sequence that is not required by the nature of the work is a discretionary (soft logic) dependency. Such dependencies are the usual candidates for fast tracking.

@@ PR8 | Agile
A customer wants to know how long, on average, it takes from submitting a request until it is delivered. Which measure answers this question?
A) Lead time
B) Cycle time
C) Velocity
D) Throughput
= A
? Lead time runs from the request to delivery (the customer's view). Cycle time runs from the start of work to completion; throughput counts items completed per period.

@@ PR9 | Agile
The sprint burndown chart has been flat for three days in the middle of the sprint. What should the scrum master do?
A) Raise it at the daily scrum to identify impediments or unrecorded progress
B) Report to the sponsor that the sprint goal will not be achieved this time
C) Ask the product owner to remove stories from the sprint to make the chart move again
D) Wait until the end of the sprint, since burndown charts often recover by themselves
= A
? A flat burndown can signal blockers, stories that are too big, or simply unupdated tasks. The team should inspect it and adapt, starting at the daily scrum.

@@ PR9 | Predictive
The team leads report that their work is "green", but the project manager's analysis shows an SPI of 0.80 and several critical activities slipping. The monthly report is due tomorrow. What should the project manager do?
A) Report the actual status with the analysis and the recovery plan
B) Report green, since the team leads are closer to the work than the PM is
C) Report amber to balance the team leads' view with the PM's own analysis
D) Delay the report until the team leads agree with the analysis
= A
? Accurate, transparent reporting is required, even when the news is bad. "Watermelon" reporting (green outside, red inside) prevents timely decisions.

@@ PR9 | Hybrid
On the cumulative flow diagram, the "In progress" band has been widening steadily, while the "Done" band grows slowly. What does this indicate?
A) Work in progress is increasing, which suggests a bottleneck and longer cycle times
B) The team is improving its throughput and will finish the release earlier than planned
C) Scope has been reduced by the product owner during the last few iterations
D) The team has stopped starting new work and is concentrating on finishing items
= A
? A widening in-progress band shows that work is being started faster than it is finished, a sign of a bottleneck and rising cycle times.

@@ PR9 | Predictive
The schedule management plan sets a control threshold of ±5% for schedule variance. This month, SV is −3% of PV. What is the most appropriate action?
A) Report the variance and keep monitoring, since it is within the agreed threshold
B) Submit a change request to re-baseline the schedule immediately to remove the variance
C) Crash critical-path activities to eliminate the variance before the next report
D) Escalate to the sponsor that the project is out of control and needs intervention now
= A
? Variances within the agreed threshold are reported and monitored; corrective action is triggered when the threshold is exceeded or a trend indicates it will be.

@@ PR9 | Agile
Stakeholders interrupt the team several times a day asking about progress. What should the scrum master do?
A) Make progress visible through information radiators and invite them to sprint reviews
B) Ask the developers to answer all stakeholder questions as quickly as they possibly can
C) Forbid stakeholders from contacting the team at any time during the sprint
D) Send a detailed daily status email to every stakeholder on the distribution list
= A
? Information radiators and regular reviews provide transparency without constant interruptions. Forbidding contact damages relationships; daily emails create overhead.

@@ PR9 | Predictive | match
Match each item with the correct category.
1) "40 of 50 test cases have been executed"
2) "Testing is two days behind the plan"
3) Monthly dashboard prepared for the steering committee
4) "The estimate at completion is $1.2 million"
A) Work performance data
B) Work performance information
C) Work performance report
D) Forecast
= 1-A, 2-B, 3-C, 4-D
? Raw observations are data; data compared with the plan is information; compiled documents for decision-makers are reports; EAC is a forecast of future performance.

@@ PR10 | Predictive
All deliverables are complete, and the customer has said informally that they are satisfied. The functional managers want their staff back immediately. What should the project manager do first?
A) Obtain formal written acceptance of the deliverables
B) Release the team members to their functional managers
C) Archive the project documents in the repository
D) Hold a celebration to recognise the team's work
= A
? Formal acceptance must be obtained before closing. Releasing resources, archiving and celebrating come after acceptance is secured.

@@ PR10 | Agile
The final release of a product has been accepted, and the team will move to a different product next month. Which activities should be completed before the team moves?
A) Transition support to operations, hold a retrospective and share lessons
B) Delete the product backlog, since the product will no longer be developed
C) Move the team immediately, since agile teams do not need formal closure
D) Ask the product owner to archive the code without informing operations
= A
? Closing an adaptive project or release includes handing over to operations, capturing lessons and releasing the team in an orderly way.

@@ PR10 | Predictive
The buyer is closing a contract, but the seller has an open claim for additional compensation that the buyer disputes. What should happen before the contract is closed?
A) Resolve the claim through negotiation or the agreed dispute process
B) Close the contract and leave the claim to the legal department afterwards
C) Pay the claim in full to close the contract without further delay
D) Ignore the claim, since the deliverables have already been accepted
= A
? Contracts are closed after claims have been settled — preferably through negotiation, then alternative dispute resolution if needed.

@@ PR10 | Hybrid
The sponsor cancels a hybrid project after a strategic change. Software increments have been released, and the hardware contract is half complete. What should the project manager do?
A) Close the project: document status and reasons, close contracts per their terms, capture lessons
B) Stop all work immediately and leave the documentation in its current state for future reference
C) Complete the hardware contract first, since the contract has already been signed with the vendor
D) Keep the team together in case the sponsor changes the decision in the next few months
= A
? Terminated projects still need orderly closure, including contract termination according to its clauses, knowledge capture and release of resources.

@@ PR10 | Predictive
During closure, what should the project manager do with the project records?
A) Archive them per organisational policy so they become organisational process assets
B) Delete them, since the project is complete and the records are no longer needed by anyone
C) Keep them on the project manager's laptop for use on future projects
D) Send them to the customer, since the customer paid for the project
= A
? Archiving project records according to policy preserves historical information and lessons learned for future projects and audits.

@@ PR10 | Predictive | multi
Which two items should be included in the project's final report? (Choose two.)
A) A summary of performance against the scope, schedule, cost and quality objectives
B) A summary of how the business benefits will be realised and measured after the project
C) Detailed personal performance ratings of each team member
D) The full daily log of every activity performed during the project
E) A draft charter for the next project
= A, B
? The final report summarises performance against objectives and how the intended benefits will be achieved. Personal ratings, raw logs and new charters do not belong in it.
