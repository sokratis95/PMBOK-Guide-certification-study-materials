%% CASE Westwind offshore wind farm
Westwind Energy is building a 60-turbine offshore wind farm. Turbine installation follows a predictive plan using a chartered installation vessel; an agile team builds the digital monitoring software for the farm.

- The installation vessel costs **$250,000 per day** and is chartered for 120 days. Work is possible only when waves are below 2 metres; historical data shows that about **30% of days** in the season exceed this.
- The manufacturer delivers turbines in batches of ten. **Batch 3 will be three weeks late.**
- The monitoring software's alarm functions must be ready before the first turbine is energised in **ten weeks (five sprints)**. The must-have alarm stories total **120 points**; the team's velocity is **15 to 20 points** per sprint.
@@ PR8 | Predictive
How should the installation schedule take account of the weather?
A) Plan for weather downtime using the historical data, with about 30% of days expected to be lost
B) Plan as if every day is workable, and recover any lost days by working overtime
C) Plan only the summer months, when there is no risk of bad weather at all
D) Add a fixed 5% buffer at the end of the schedule, since weather delays are hard to predict in advance
= A
? Known, quantifiable uncertainty is built into the schedule using historical data. Ignoring it, or using an arbitrary small buffer, produces an unrealistic plan.

@@ PR6 | Predictive | fill
If the installation vessel had to wait idle for 21 days for the late batch, what would the standby cost be? (Answer in dollars.)
= $5,250,000
? Standby cost = 21 days × $250,000 per day = $5,250,000.

@@ PR4 | Hybrid
How should the project use the installation vessel while batch 3 is late?
A) Resequence work to keep the vessel productive, such as installing the next batch first
B) Release the vessel back to its owner for three weeks and charter it again when batch 3 arrives
C) Keep the vessel waiting at the site, since resequencing would change the approved schedule
D) Ask the vessel crew to carry out maintenance on the vessel for three weeks at the project's cost
= A
? An expensive, scarce resource should be kept productive. Resequencing work, where technically possible, avoids standby costs.

@@ PR3 | Agile
At the team's velocity, the must-have alarm stories will not all be done in five sprints. What should the product owner do?
A) Raise it now, order the alarms by criticality and agree options with stakeholders
B) Keep the plan unchanged and ask the team to work faster in the last two sprints
C) Energise the first turbine without the alarm functions and add them in a later software release
D) Wait until the fourth sprint to see whether the team's velocity improves
= A
? Five sprints at 15–20 points deliver 75–100 points, less than the 120 needed. Raising this early allows value-based decisions, such as prioritising the most critical alarms or adding capacity.
%% END CASE

@@ PR1 | Predictive
Obtaining consent for an offshore wind farm can take up to three years. How should this affect planning?
A) Plan consenting early as a critical long-lead activity, with design in parallel
B) Start detailed design only after consent has been granted, so that no design work is wasted
C) Order the turbines before applying for consent, so that the long delivery time is not lost
D) Treat consenting as a minor administrative task that can be completed during construction
= A
? Long-lead approvals often drive the critical path. Planning them early, with design work running in parallel, protects the schedule.

@@ PR1 | Agile
The legal tech team is not yet sure which research problems matter most to lawyers. How should it start?
A) With a short discovery of interviews and prototypes, then plan delivery
B) With a detailed plan for all of the features that the partners mentioned in the first meeting
C) With the most technically interesting features, since they will impress the lawyers most
D) With a full requirements specification signed off by every partner before any work begins
= A
? When the problem is uncertain, discovery comes first: learning what matters most before planning the delivery of solutions.

@@ PR1 | Hybrid
A new production line must not disrupt the busy pre-Christmas production period. How should its installation be planned?
A) Install and commission it in the low season, with trial runs completed before the peak
B) Install it during the peak, since that is when the extra capacity is most needed
C) Install it whenever the equipment arrives from the supplier, and adjust production around it
D) Postpone it until after Christmas next year, to avoid any risk at all
= A
? Planning considers business cycles. Installing in the low season protects peak production and leaves time for trials.

@@ PR1 | Predictive
The tournament date is fixed. How should the schedule be developed?
A) Schedule backwards from the fixed date to find the latest start dates
B) Schedule forwards from today and move the tournament if necessary
C) Start each activity when its team is ready, without a schedule
D) Copy the schedule of the previous tournament without changes
= A
? Backward scheduling from a fixed end date shows the latest dates by which work must start, which reveals whether the plan is feasible.

@@ PR1 | Agile
What should the definition of done include for features that give users legal information?
A) A review of the content by a qualified lawyer
B) Approval by the marketing department
C) A check that the screens look attractive
D) A count of the words in each legal text
= A
? The definition of done includes the quality checks that matter for the product, such as expert review of legal content.

@@ PR1 | Hybrid
The compliance rules for a legal platform are stable and well understood, but the right user experience is uncertain. Which development approach fits best?
A) A hybrid approach: a predictive compliance core and an iterative user experience
B) A fully predictive approach, with all screens designed and approved before development starts
C) A fully adaptive approach, in which the compliance rules are discovered sprint by sprint
D) No defined approach, since the platform is too complex to plan in any meaningful way
= A
? Tailoring matches the approach to each part of the work: predictable parts are planned in advance, while uncertain parts are developed iteratively.

@@ PR1 | Predictive
Which plan defines the quality standards, metrics and responsibilities for a project?
A) The quality management plan
B) The communications management plan
C) The procurement management plan
D) The stakeholder engagement plan
= A
? The quality management plan describes how quality requirements and standards will be met, measured and managed.

@@ PR1 | Agile
A sports club's fan app must be live for the first match of the season in eight weeks. How should the release be planned?
A) As a minimum viable release for the first match, with features added during the season
B) As a complete app with every requested feature, even if it misses the first match
C) As a detailed plan of all features for the whole season, fixed in advance
D) As a single release at the end of the season, when all of the requested features are ready
= A
? A fixed date calls for a minimum viable release that meets it, followed by incremental improvements.

@@ PR2 | Predictive
Several contractors deliver different packages of the wind farm. Where are the scope boundaries between the packages defined?
A) In each contract's scope documents, supported by an interface matrix
B) In verbal agreements between the contractors' site managers, made as the work progresses
C) In the project's lessons learned register from earlier projects
D) In the marketing materials prepared for the wind farm's investors
= A
? Contract scope documents and an interface matrix make it clear who is responsible for what, especially where packages meet.

@@ PR2 | Agile
Where should defects found in production be recorded?
A) In the product backlog, ordered with the other work
B) In a separate spreadsheet that only testers can see
C) In the sprint backlog of whichever sprint is running
D) Nowhere, since they will be fixed in the next release
= A
? The product backlog holds all work for the product, including defects, so that the product owner can prioritise it transparently.

@@ PR2 | Hybrid
A new food product must meet the nutritional claims that will be printed on its label. How should these claims be treated?
A) As requirements with acceptance criteria verified by laboratory tests
B) As marketing statements that the production team does not need to check
C) As aims to be checked once the product has been on sale for a year
D) As optional extras, since the recipe is the most important requirement
= A
? Claims on a label are binding requirements. They need clear acceptance criteria and objective verification.

@@ PR2 | Predictive
When should the decomposition of the work breakdown structure stop?
A) When work packages can be estimated, assigned and controlled
B) When every activity in the WBS takes less than one hour to complete
C) When the WBS has exactly five levels in every one of its branches
D) When the project manager runs out of time to plan
= A
? Work packages should be detailed enough to estimate, assign and control, but no more detailed than necessary.

@@ PR2 | Agile
A story covers searching documents for lawyers, paralegals and clients, each with different permissions. How could it be split?
A) By user role
B) By programming language
C) By team member
D) By day of the week
= A
? Splitting by user role creates smaller stories that each deliver value to a specific group and can be tested independently.

@@ PR2 | Predictive | multi
Which two items does a WBS dictionary entry typically contain? (Choose two.)
A) A description of the work
B) The acceptance criteria
C) The team members' salaries
D) The text of the project charter
E) The latest version of the issue log
= A, B
? A WBS dictionary entry describes the work package and includes details such as acceptance criteria, responsible organisation, milestones and estimates.

@@ PR2 | Hybrid
The plant's food safety plan identifies critical control points. How should the new line's requirements reflect them?
A) Include monitoring and controls for each critical control point as requirements
B) Leave the critical control points to the quality team once the line is running
C) Treat the critical control points as recommendations that the supplier may follow
D) Add the critical control points to the lessons learned register for future lines
= A
? Food safety controls are mandatory requirements. Tracing them into the line's requirements ensures they are designed, built and verified.

@@ PR2 | Agile
How far ahead should the team usually refine product backlog items?
A) Enough items for about the next one or two sprints
B) Every item in the backlog, however far in the future
C) Only the items for the current sprint, on its first day
D) No items, since refinement wastes the team's time
= A
? Refining a little ahead keeps upcoming items ready, without wasting effort on items that may change or be dropped.

@@ PR3 | Predictive
Which measure is commonly used to compare the lifetime cost of electricity from different energy projects?
A) The levelised cost of energy
B) The schedule performance index
C) The internal team velocity
D) The defect removal efficiency
= A
? The levelised cost of energy divides a project's lifetime costs by its lifetime energy output, which allows different technologies to be compared.

@@ PR3 | Agile
How should the law firm show that its new research tool saves lawyers' time?
A) Measure research time before and after its introduction, for comparable tasks
B) Ask the developers to estimate how much time the tool probably saves
C) Count the number of features that the tool provides to lawyers
D) Assume that the time saved matches the claims made in the vendor's marketing material
= A
? Value is demonstrated with evidence: a baseline measured before the change, compared with measurements afterwards.

@@ PR3 | Hybrid
The wind farm's business case includes carbon savings and local jobs as well as financial returns. What is this approach called?
A) The triple bottom line
B) Earned value analysis
C) The critical path method
D) Rolling wave planning
= A
? The triple bottom line considers social, environmental and financial value, which reflects PMBOK 8's emphasis on sustainability.

@@ PR3 | Predictive
If the discount rate used in the business case increases, what happens to the project's net present value?
A) It decreases
B) It increases
C) It stays the same
D) It becomes exactly zero
= A
? A higher discount rate reduces the present value of future cash inflows, so NPV falls.

@@ PR3 | Agile
Data shows that a legacy feature is used by almost nobody but costs a lot to maintain. What should the product owner consider?
A) Retiring it, after checking with its few users and the stakeholders
B) Keeping it, since removing any feature always upsets users
C) Rebuilding it with the latest technology to attract more users
D) Hiding it in the menu while continuing to maintain it as before
= A
? Removing low-value features reduces cost and complexity, which frees capacity for more valuable work.

@@ PR3 | Predictive
A new production line costs $1,200,000 and saves $300,000 per year. What is its simple return on investment over five years?
A) 25%
B) 20%
C) 4%
D) 125%
= A
? Total savings over five years = 5 × 300,000 = $1,500,000. ROI = (1,500,000 − 1,200,000) / 1,200,000 = 25%.

@@ PR3 | Agile
A legal tech start-up offers free trials of its product. Which metric best shows whether the product delivers value that customers will pay for?
A) The conversion rate from trials to paid subscriptions
B) The number of trial accounts opened each month
C) The number of features released each month
D) The number of visits to the company's website
= A
? Conversion to paid use shows that customers find enough value to pay, which is a stronger signal than sign-ups or visits.

@@ PR4 | Predictive
Only a few vessels in the world can install the largest turbines, and they are booked years ahead. What should the project manager do?
A) Secure a vessel early through a reservation agreement aligned with the schedule
B) Wait until the turbines are ready, then look for an available vessel on the market
C) Use a smaller vessel that is available, whatever its capabilities
D) Ask the turbine manufacturer to find a vessel when it is needed
= A
? Scarce, critical resources with long lead times must be secured early, in line with the schedule.

@@ PR4 | Agile
The legal tech team needs regular legal input but cannot afford a full-time lawyer. What should be arranged?
A) A fixed, part-time allocation of a lawyer, planned into the team's capacity
B) Occasional emails to the legal department whenever a question comes up during the work
C) A rule that the developers answer the legal questions themselves
D) A legal review only once the whole product has been completed
= A
? Planned, regular access to expertise keeps work flowing and avoids long waits for answers.

@@ PR4 | Hybrid
The new line will run around the clock, which requires an additional shift of operators. What should the resource plan include?
A) Recruiting and training the extra shift ahead of go-live
B) Asking existing operators to cover the extra shift with overtime
C) Running the line for fewer hours until operators are found
D) Hiring the extra shift on the day that production starts
= A
? Resource plans include the people needed to operate what the project delivers, with time for recruitment and training before go-live.

@@ PR4 | Predictive
Which chart shows the number of people needed in each week of the project?
A) A resource histogram
B) A cause-and-effect diagram
C) A cumulative flow diagram
D) A stakeholder cube
= A
? A resource histogram shows resource requirements over time, which helps identify peaks and overallocation.

@@ PR4 | Agile
The product needs more delivery capacity. How should a second team be added?
A) A new cross-functional team working from the same product backlog and product owner
B) As a team with its own separate product backlog, so that it does not depend on the first team
C) By adding all of the new people to the existing team, so that it becomes one large team
D) As a testing team that checks the work of the first team at the end of each sprint
= A
? Multiple teams working on one product share one product backlog and product owner, which keeps priorities aligned.

@@ PR4 | Hybrid
The equipment supplier's specialist technicians are needed at the same time at two of the client's plants. What should the project manager do?
A) Agree priorities and dates with the supplier early and plan the commissioning around them
B) Insist that the supplier sends technicians to both plants at once, as the contract does not limit numbers
C) Commission one of the plants without the supplier's technicians to avoid any delay
D) Wait to see which plant the supplier sends its technicians to first, and plan the other one afterwards
= A
? Scarce external resources are coordinated early, and the schedule is adjusted to their availability.

@@ PR5 | Predictive
The vessel charter pays a full day rate when the vessel is working and a lower rate when it is waiting for suitable weather. What does this arrangement do?
A) It shares the weather risk between the vessel owner and the charterer
B) It transfers all of the weather risk to the vessel owner
C) It removes the weather risk from the project completely
D) It makes the charter a cost plus fixed fee contract
= A
? Different rates for working and weather standby share the financial impact of weather between the parties.

@@ PR5 | Hybrid
Before licensing an AI model to process client documents, which contract term is most important for the law firm?
A) A commitment that client data stays confidential and is not used for training
B) A guarantee that the AI model will never make any mistakes in the documents it produces
C) A discount for paying for three years of licences in advance
D) The right to rename the AI model with the law firm's brand
= A
? Client confidentiality is a core legal obligation. Contracts for AI services must protect how client data is used and stored.

@@ PR5 | Hybrid | multi
Which two contract clauses help manage risk when buying a new production line? (Choose two.)
A) Performance guarantees, with acceptance tests
B) Liquidated damages for late delivery
C) Unlimited free changes for the supplier
D) No warranty on the equipment
E) Full payment in advance of delivery
= A, B
? Performance guarantees and liquidated damages give the buyer remedies if the equipment underperforms or is late.

@@ PR5 | Predictive
The ticketing vendor will be paid a percentage of each ticket sold instead of a fixed fee. What does this arrangement do?
A) It links the vendor's income to ticket sales and shares the commercial risk
B) It guarantees that every ticket for the tournament will be sold
C) It removes the need for a written contract with the ticketing vendor for the event
D) It makes the vendor responsible for organising the tournament
= A
? Revenue-sharing arrangements align the vendor's incentives with the buyer's results.

@@ PR5 | Predictive
Which document describes how the project will acquire goods and services from outside the organisation?
A) The procurement management plan
B) The resource breakdown structure
C) The quality management plan
D) The stakeholder register
= A
? The procurement management plan describes procurement activities, contract types, roles and how sellers will be managed.

@@ PR5 | Agile
The buyer wants to pay the vendor partly according to the reduction in lawyers' research time. What type of contract is this?
A) An outcome-based contract with measurable outcomes
B) A time and materials contract without any limits
C) A firm fixed price contract for a list of features
D) A cost plus percentage of cost contract
= A
? Outcome-based contracts tie payment to business results, which requires outcomes that can be measured objectively.

@@ PR5 | Predictive
The installation contractor claims extra time for bad weather that was within the normal range for the season. What should the project manager do?
A) Assess the claim against the contract; normal weather is usually the contractor's risk
B) Accept the claim, since weather is always a force majeure event for every contract
C) Reject the claim without reading the contract, since the contractor should have planned better
D) Pay the claim to avoid a dispute with the contractor before the project ends
= A
? Claims are assessed against the contract terms. Normal, foreseeable weather is usually the contractor's risk unless the contract allocates it differently.

@@ PR6 | Predictive
EV = $8,000,000 and PV = $10,000,000. What is the schedule variance percentage?
A) −20%
B) −25%
C) +20%
D) −80%
= A
? SV = EV − PV = −$2,000,000. SV% = SV / PV = −2,000,000 / 10,000,000 = −20%.

@@ PR6 | Agile
Three teams each cost $40,000 per two-week sprint. What is their cost for a year of 26 sprints?
A) $3,120,000
B) $1,040,000
C) $2,080,000
D) $3,900,000
= A
? Annual cost = 3 teams × $40,000 × 26 sprints = $3,120,000.

@@ PR6 | Hybrid
The cost management plan says that variances above 10% must be explained to the steering committee. A work package is 12% over budget. What should the project manager do?
A) Analyse the variance and present its causes and corrective actions to the committee
B) Wait until the variance reaches 20%, since 12% is only slightly above the agreed threshold
C) Move costs to another work package so that the variance falls below 10%
D) Report the variance only in the final report at the end of the project
= A
? Control thresholds define when variances must be escalated. Moving costs to hide a variance would be unethical.

@@ PR6 | Predictive
The sponsor approves an additional $2,000,000 for an agreed scope change. What happens to the cost baseline?
A) It is updated through change control to include the approved change
B) It stays the same, since approved baselines can never be changed for any reason
C) It is replaced by the actual costs to date
D) It is increased by the management reserve
= A
? Baselines change only through approved change requests, which keeps them a valid reference for measuring performance.

@@ PR6 | Predictive
Installing the first turbine took 40 hours. With a 90% learning curve, how long should installing the second turbine take?
A) 36 hours
B) 40 hours
C) 32 hours
D) 4 hours
= A
? With a 90% learning curve, each doubling of the cumulative number of units reduces the time per unit to 90% of its previous value: 0.9 × 40 = 36 hours. Learning curves make estimates for repetitive work more realistic.

@@ PR6 | Agile
The team spends 30% of its capacity on low-value internal requests. What is the main cost of this?
A) The opportunity cost of the more valuable work that is not done
B) The cost of the meetings needed to discuss the requests
C) The cost of the software tools used to track the requests
D) There is no cost at all, since the team's salaries are fixed whatever it works on
= A
? Capacity spent on low-value work has an opportunity cost: the value that the higher-priority work would have delivered.

@@ PR6 | Hybrid
When is a definitive cost estimate usually prepared?
A) When the design and scope are well defined, typically before major commitments
B) At the very start of the project, before any requirements are known
C) After the project has been completed, from the actual costs
D) Never, since every estimate in a project is only a rough guess until the work is done
= A
? Estimates become more accurate as information grows. A definitive estimate needs a well-defined scope and design.

@@ PR7 | Agile
How should the team measure the quality of the AI tool's document summaries?
A) By comparing them with summaries reviewed by lawyers, tracking accuracy over time
B) By asking the developers whether the summaries look reasonable to them after each sprint
C) By counting the number of words in each summary that the tool produces
D) By measuring how quickly the tool produces each summary
= A
? AI output quality is measured against a trusted reference set, with metrics tracked over time to detect changes.

@@ PR7 | Hybrid
Pack weights vary, and underweight packs are illegal. What should the target weight of the filling process be?
A) A mean far enough above the label weight that normal variation keeps packs legal
B) Exactly the label weight, since any extra product in the packs is money given away for free
C) Below the label weight, since customers rarely weigh their packs
D) Any weight, as long as the average of each day's packs is correct
= A
? With natural variation, the process mean is set so that almost no packs fall below the legal limit. Reducing variation allows the mean to move closer to the label weight.

@@ PR7 | Predictive | match
Match each type of test with its description.
1) Factory acceptance test
2) Site acceptance test
3) Commissioning
4) Performance test
A) Tests at the manufacturer's premises before shipping
B) Tests at the final location after installation
C) Bringing systems into operation step by step
D) Verifying guaranteed output under operating conditions
= 1-A, 2-B, 3-C, 4-D
? Staged testing finds problems as early as possible and verifies that equipment meets its requirements in its final environment.

@@ PR7 | Agile
Which metric shows the percentage of deployments that cause a failure in production?
A) Change failure rate
B) Velocity
C) Lead time for changes
D) Deployment frequency
= A
? Change failure rate is a measure of delivery quality: a lower rate means that changes are reaching production more safely.

@@ PR7 | Hybrid
A customer finds a foreign object in a product. Which capability is essential to limit the impact?
A) Batch traceability, to identify and recall affected products quickly
B) A larger marketing budget to protect the brand's reputation
C) A new recipe that makes any small foreign objects harder for customers to notice
D) A rule that customers must return products in person
= A
? Traceability by batch allows a targeted recall, which protects consumers and limits the cost and reputational damage.

@@ PR7 | Predictive
Which statement best describes quality?
A) The degree to which deliverables meet requirements and are fit for use
B) The use of the most expensive materials and the highest specifications available
C) The number of features delivered compared with the number originally planned
D) The absence of any changes during the project's execution
= A
? Quality is about meeting requirements and fitness for use, not about luxury (which is grade) or the absence of change.

@@ PR7 | Agile
The AI model performs poorly on some types of legal document. What should the team check first?
A) Whether the training data represents those document types well
B) Whether the users are reading the summaries too quickly
C) Whether the servers need more memory to run the model
D) Whether the model's name should be changed for those types
= A
? AI quality depends heavily on the training data. Poor results for some inputs often point to gaps in the data.

@@ PR8 | Predictive | fill
An activity normally takes 12 days and costs $30,000. It can be crashed to 8 days at a cost of $46,000. What is its crash cost per day saved? (Answer in dollars.)
= $4,000
? Cost slope = (crash cost − normal cost) / (normal time − crash time) = (46,000 − 30,000) / (12 − 8) = 16,000 / 4 = $4,000 per day.

@@ PR8 | Agile
Next month, half of the team will be on holiday. How should the release forecast be handled?
A) Reduce the expected capacity for those sprints and update the forecast
B) Keep the forecast unchanged, since the team will catch up on the lost work later
C) Ask the remaining team members to double their output
D) Stop forecasting until everyone is back from holiday
= A
? Forecasts reflect expected capacity. Known absences are built in, so that stakeholders receive realistic information.

@@ PR8 | Hybrid
Recipe trials on the new line often need to be repeated. How should the schedule handle this?
A) Include a buffer for repeat trials, based on experience, and track its use
B) Plan for one trial only, since repeating trials would show poor preparation by the team
C) Plan the trials after the launch date, once production has started
D) Remove the trials from the schedule, since their duration is uncertain
= A
? Known variability is planned for with buffers based on experience, and buffer use is tracked as an early warning.

@@ PR8 | Predictive
A path in the schedule has only one day of total float. How should it be treated?
A) As near-critical, monitored closely because a small delay could make it critical
B) As non-critical, since any positive float means the path is safe
C) As the critical path, replacing the current critical path
D) As unimportant, since only the activities on the critical path need to be monitored
= A
? Near-critical paths can quickly become critical, so they are monitored together with the critical path.

@@ PR8 | Agile
The legal tech team reduces its work-in-progress limit from 10 items to 4. If throughput stays about the same, what happens to the average cycle time?
A) It becomes shorter
B) It becomes longer
C) It stays the same
D) It becomes zero
= A
? Little's Law: cycle time = WIP ÷ throughput. With less work in progress and similar throughput, items finish faster.

@@ PR8 | Predictive
In schedule updating, what is the data date?
A) The date up to which progress has been recorded
B) The date on which the project will finish
C) The date of the next steering committee meeting
D) The date on which the schedule was first baselined
= A
? The data date (status date) is the point in time at which progress is measured; work before it is actual, and work after it is forecast.

@@ PR8 | Hybrid
No historical data exists for a new installation method. How should its durations be estimated?
A) With experts, using three-point estimates, refined after the first installations
B) By copying the durations of a completely different installation method
C) By asking the sponsor how long the installation should take, based on the business case
D) By using the shortest duration that anyone suggests
= A
? Where data is lacking, expert judgement with ranges captures uncertainty, and estimates are refined as actual data becomes available.

@@ PR9 | Predictive
The plan assumes that two turbines will be installed each week, but the actual average is 1.5. What should the project manager do?
A) Analyse the causes, forecast the new completion date and take corrective action
B) Keep reporting against the original plan until the rate improves on its own
C) Change the plan to 1.5 turbines per week without telling the sponsor or the steering committee
D) Ask the crews to install three turbines per week from next week on
= A
? A consistent shortfall is analysed for causes, its effect is forecast and corrective actions are proposed, with baseline changes going through change control.

@@ PR9 | Agile
Besides the increment, what should be inspected at the sprint review to judge progress?
A) Progress towards the product goal, including outcome measures
B) The number of hours that each developer worked in the sprint
C) The individual velocity of each member of the team
D) The scrum master's notes from each of the daily scrums held during the sprint
= A
? The sprint review inspects the increment and progress towards the product goal, so that the team and stakeholders can adapt what comes next.

@@ PR9 | Hybrid
Which measure combines availability, performance and quality to show how effectively the new production line runs?
A) Overall equipment effectiveness
B) Schedule performance index
C) Net present value of the new line
D) Team velocity
= A
? Overall equipment effectiveness (OEE) multiplies availability, performance and quality rates into one measure of productive use.

@@ PR9 | Predictive
Total float on the critical path has fallen from ten days to two days over three months. What does this show?
A) The schedule contingency is being used up, and the end date is at increasing risk
B) The project is ahead of schedule, since less float is needed as the work progresses
C) The critical path has changed to a different set of activities
D) Nothing, since float always falls as a project progresses
= A
? A falling float trend is an early warning that the project may miss its end date if the trend continues.

@@ PR9 | Agile
Three months after launch, only 30% of lawyers use the tool each week, against a target of 70%. What should the product owner do?
A) Investigate why through data and interviews, and adjust the product or the support
B) Wait for usage to grow on its own, since adoption takes time
C) Ask the partners to make use of the tool compulsory for everyone
D) Report the project as successful, since the tool has been delivered on time and on budget
= A
? Adoption below target shows that value is not being realised. Understanding the reasons guides improvements.

@@ PR9 | Hybrid
In the final month before the tournament, how often should readiness be reviewed?
A) More often, such as daily, focusing on open actions and risks
B) Monthly, in the same way as in the earlier phases of the project
C) Only once, at the final readiness meeting before the event
D) Not at all, since the plan is complete
= A
? Monitoring frequency increases as critical deadlines approach, so that problems are found and fixed in time.

@@ PR9 | Hybrid | multi
Which two indicators best show whether a new production line is ready for full production? (Choose two.)
A) Overall equipment effectiveness that is stable at the target level
B) Product quality within specification over several runs
C) The number of project meetings held
D) The share of the project budget spent
E) The number of operators hired
= A, B
? Readiness is shown by stable performance and quality in actual runs, not by project activity or inputs.

@@ PR10 | Predictive
When is a contractor's performance bond usually released?
A) After the contractor's obligations, including the defects period, are met
B) As soon as the contract has been signed by both of the parties involved
C) Halfway through construction, as an incentive for the contractor to finish
D) When the project manager decides that it is no longer needed
= A
? A performance bond protects the buyer until the contractor has fulfilled its obligations, so it is released only then.

@@ PR10 | Hybrid
At closure, what should be kept about the AI tool for future audits?
A) Documentation of the model, data, tests and key decisions, as rules require
B) Only the source code, since it contains everything needed to understand the tool
C) Nothing, since AI models change too often for documentation to be useful
D) Only the user manual that was given to the lawyers at the tool's launch
= A
? Regulators and auditors may need to understand how an AI system was built and tested. Closure preserves the required documentation.

@@ PR10 | Hybrid
Before the new line is handed over to production, what should be confirmed?
A) That it meets the agreed criteria and that operators and procedures are ready
B) That the equipment supplier has received its final payment for the production line
C) That the project team has celebrated the completion of the installation work
D) That the production manager likes the colour of the new equipment
= A
? Handover requires evidence that the deliverable meets its acceptance criteria and that the receiving organisation is ready to operate it.

@@ PR10 | Predictive
After the tournament, what is a key financial closure activity?
A) Reconciling all income and costs and settling vendor accounts
B) Planning the budget for the next tournament in four years
C) Paying the team bonuses before the accounts are reconciled
D) Leaving the vendors' final invoices for the finance department
= A
? Financial closure reconciles the accounts, settles all obligations and produces the final financial results.

@@ PR10 | Agile
Who confirms that the final increment of the legal tech tool meets the definition of done and is ready for release?
A) The product owner, with the team, against the definition of done
B) The scrum master alone, after the last daily scrum of the final sprint
C) The marketing department, after the launch campaign
D) The vendor's sales team, after the contract is signed
= A
? The team ensures that work meets the definition of done, and the product owner decides whether to release the increment.

@@ PR10 | Predictive
The wind farm's environmental permits contain conditions that apply during operation. What should happen at closure?
A) They are transferred to the operator, who must comply with their conditions
B) The permits are cancelled, since the construction project has been completed
C) The conditions are recorded in the final report and then no longer apply
D) The project team keeps the permits in case the regulator asks questions
= A
? Obligations that continue after the project, such as permit conditions, are handed over to the owner who will carry them out.
