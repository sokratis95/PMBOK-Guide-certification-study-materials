%% CASE Crestline Bank open-banking platform
Crestline Bank is building an open-banking API platform with three Scrum teams that coordinate through a weekly scrum of scrums. The platform must go live in nine months.

- The central bank has just published a regulation requiring **strong customer authentication** for every third-party API call. It applies to Crestline from the go-live date.
- Every new API design must be approved by the bank's **security architecture team**, a separate department. Its review queue is currently four weeks long, and two teams have stories blocked.
- The external **identity provider** may not support the new authentication standard in time. The team estimates a 40% probability, which would delay go-live by about six weeks.
- Mid-release, the marketing director asks the developers to add a **partner dashboard** for an upcoming industry event.
@@ BE2 | Agile
How should the teams handle the new authentication regulation?
A) Turn it into prioritised backlog items and acceptance criteria with compliance experts
B) Wait until the final release to address the regulation, since it applies only from the go-live date
C) Ask the security architecture team to implement the regulation on behalf of the three Scrum teams
D) Treat the regulation as optional guidance until the central bank publishes detailed technical rules
= A
? Compliance requirements are mandatory and must be built into the product. Translating them into backlog items and acceptance criteria, with expert input, lets the product owner prioritise them appropriately. Waiting or treating them as optional risks non-compliance.

@@ BE4 | Agile
What is the most appropriate action regarding the security review queue?
A) Work with the security team on a faster review approach, escalating if needed
B) Ask the teams to start building the blocked APIs without approval and seek the review afterwards
C) Remove all stories that need security review from the next sprints until the queue has cleared
D) Tell the teams to keep waiting, since the security architecture team is outside the project's control
= A
? Removing impediments the teams cannot remove themselves is a servant-leader responsibility. Options include embedding a security architect, pre-approved design patterns or a dedicated review slot. Bypassing security controls is unacceptable, and passive waiting ignores the impediment.

@@ BE5 | Agile
Which response to the identity provider risk is most appropriate?
A) Run a spike on an alternative provider now and define a switching trigger
B) Accept the risk passively and review it again when the go-live date is much closer
C) Transfer the risk by buying insurance that pays out if the go-live date is delayed
D) Avoid the risk by dropping strong customer authentication from the platform
= A
? With a 40% probability and a significant impact, a proactive response is justified: a spike reduces uncertainty and prepares a contingent response with a clear trigger. Dropping a mandatory regulatory requirement is not an option, and passive acceptance leaves the go-live date exposed.

@@ BE3 | Agile
How should the marketing director's request for a partner dashboard be handled?
A) Add it to the product backlog for the product owner to weigh against regulatory work
B) Ask the developers to build it quickly in parallel with their current sprint commitments
C) Reject it, since scope cannot change during a release in an agile project
D) Submit it to the change control board as a formal change to the scope baseline
= A
? In an adaptive project, new requests go to the product backlog, where the product owner prioritises them by value and urgency — here against mandatory regulatory work. Developers should not take work directly from stakeholders.
%% END CASE

@@ BE1 | Hybrid
In a hybrid project, the product owner wants to add features to the current software release. Doing so would delay a hardware integration milestone that is written into the customer contract. Who should decide?
A) The governance body defined for changes to contractual milestones, such as the CCB
B) The product owner alone, since the product owner is accountable for the content of every software release
C) The developers, since they will be the ones who have to deliver the additional features in the release
D) The project manager alone, since the project manager is accountable for integrating the overall plan
= A
? Product owners decide backlog priorities within their authority, but changes that affect contractual or baselined commitments must follow the governance defined for them.

@@ BE1 | Predictive
A project manager is setting up governance for a large infrastructure project involving several contractors and public agencies. What should be defined first?
A) Decision rights, roles and escalation paths
B) The layout of the monthly status report
C) The format of the lessons learned register
D) The list of team-building activities
= A
? Effective governance starts with who decides what, within which thresholds, and how issues are escalated. Report formats and other details follow from that framework.

@@ BE1 | Agile
The PMO requires each agile team to complete a 20-page stage-gate document at the end of every two-week sprint. The teams are losing several days per sprint to it. What should the project manager do?
A) Agree tailored governance with the PMO, such as release-level gates using sprint review evidence
B) Ask the teams to stop producing the documents without informing the PMO, since agile teams value working software
C) Ask the teams to work overtime so that the documents can be produced without reducing the sprint commitment
D) Move the teams to a predictive approach so that the PMO's stage-gate documents fit the life cycle better
= A
? Governance should be tailored to the delivery approach while still giving oversight. Agreeing lighter evidence with the PMO meets both needs; ignoring the policy or overloading the team does not.

@@ BE1 | Predictive
An issue requires a decision that exceeds the project manager's authority. The governance plan says the sponsor decides, but the sponsor is unavailable for two weeks. What should the project manager do?
A) Follow the escalation path in the governance plan, such as the sponsor's delegate
B) Make the decision personally, since waiting two weeks would delay the project significantly
C) Wait for the sponsor to return, since only the sponsor is allowed to make this decision
D) Ask the team to vote on the decision so that it reflects the views of the people involved
= A
? Governance frameworks define escalation routes and delegates for exactly this situation. Acting beyond authority or simply waiting are both poor choices.

@@ BE1 | Hybrid
The team wants to use a generative AI service to draft requirements from interview transcripts that contain customer data. The organisation has no policy on AI use. What should the project manager do?
A) Agree approved use with governance, security and legal stakeholders before using it
B) Allow the team to use the service, since AI tools improve productivity and no policy prohibits them
C) Ban the use of all AI tools on the project permanently, since there is no organisational policy yet
D) Ask the team to remove customer names from the transcripts and then use any AI service they prefer
= A
? Responsible AI use needs governance for data protection, confidentiality and accountability. Absence of a policy is not permission; a permanent ban gives up legitimate benefits.

@@ BE1 | Agile | multi
Which two signs indicate that project governance is working effectively? (Choose two.)
A) Decisions are made at the appropriate level in a timely manner
B) Everyone knows the escalation path for issues beyond their authority
C) Every decision, however small, is referred to the sponsor
D) The project manager personally approves all changes to stories
E) Governance documents are reviewed only at project closure
= A, B
? Good governance enables timely decisions at the right level with clear escalation. Centralising every decision creates bottlenecks, and governance reviewed only at the end gives no oversight.

@@ BE2 | Predictive
The schedule shows excavation starting next week in an area adjoining a protected wetland. The environmental permit is still pending. The sponsor is pressing to stay on schedule. What should the project manager do?
A) Not start the excavation until the permit is granted and adjust the schedule accordingly
B) Start the excavation, since the permit is very likely to be granted within a few weeks
C) Start the excavation at night so that the work attracts less attention from regulators
D) Ask the contractor to take responsibility for starting the work without the permit
= A
? Legal and regulatory compliance is not negotiable. Working without the permit exposes the organisation to legal, financial and reputational harm; the schedule must adapt instead.

@@ BE2 | Agile
The organisation must comply with accessibility regulations for all customer-facing applications. The team's definition of done does not mention accessibility. What should the team do?
A) Add accessibility checks to the definition of done and put any gaps in completed work on the backlog
B) Wait for complaints from users with disabilities before addressing accessibility in the product
C) Ask the product owner to accept the current increments and address accessibility in the next product
D) Hire an external auditor to certify accessibility only once the final release has been completed
= A
? Embedding compliance in the definition of done builds it into every increment, and existing gaps become prioritised backlog items. Waiting for complaints or the final release creates legal and rework risk.

@@ BE2 | Hybrid
The project manager discovers that the test environment uses full copies of real customer data. Company policy requires anonymised data for testing. What should the project manager do?
A) Stop the practice, inform the data protection officer and use anonymised data
B) Continue for now, since the test environment is internal and access is limited to the team
C) Delete the test environment without informing anyone, so the issue no longer exists
D) Ask the team to finish the current test cycle quickly and then switch to anonymised data
= A
? Non-compliance with data protection policy must be stopped and reported through the proper channel, then corrected. Hiding the issue or continuing increases the exposure.

@@ BE2 | Predictive
An external auditor asks for evidence that weekly safety inspections took place. The inspections were done, but several inspection records are missing. What should the project manager do?
A) Explain the gap openly, provide the evidence available and fix record-keeping
B) Recreate the missing records from memory so that the documentation appears complete
C) Tell the auditor that the records were lost in a system failure to avoid a finding
D) Ask the inspectors to sign new records with the original dates for the missing weeks
= A
? Honesty is a mandatory ethical standard. Falsifying or backdating records is fraud; the right response is transparency and a corrective action to prevent recurrence.

@@ BE2 | Agile
In sprint 9, the team learns of a financial regulation that requires a complete audit trail for every transaction. No backlog item covers it. What should happen first?
A) Consult compliance experts to understand the requirement and assess its impact with the product owner
B) Add the audit trail to the next sprint at the top of the backlog without further analysis of the rule
C) Ignore the regulation until an auditor raises it, since the product was planned before it was known
D) Ask the sponsor for an exemption from the regulation, since the project has already started
= A
? Understanding the requirement and its impact comes first; then the product owner can prioritise the necessary work. Ignoring it or seeking an exemption is not appropriate for mandatory regulation.

@@ BE3 | Predictive
A change approved by the change control board was implemented, but the project manager later realises that the schedule baseline and the change log were never updated. What should the project manager do?
A) Update the baseline, change log and affected documents, and inform the stakeholders concerned
B) Leave the documents as they are, since the change has already been implemented successfully
C) Submit a new change request to approve the same change a second time before updating anything
D) Reverse the change so that the documents and the delivered work are consistent again
= A
? Approved changes must be reflected in baselines and logs so that performance is measured correctly and everyone works from the same plan. The change itself was approved; only the documentation is missing.

@@ BE3 | Hybrid
A customer asks a developer to change a field in the contract-based, predictive part of a hybrid solution. The developer says it will take only an hour. What should happen?
A) The request should be documented and assessed through the change control process
B) The developer should make the change, since it is small and the customer asked for it
C) The developer should refuse the request and not tell anyone about it
D) The request should be added to the agile team's backlog instead
= A
? Even small changes to baselined, contract-based work must be assessed and approved, because their impact (testing, documentation, contract) may be larger than it seems.

@@ BE3 | Agile
Midway through a sprint, a critical production defect is found that affects customers. The team is fully committed to the sprint goal. What should happen?
A) The product owner and team assess it and, if urgent, take it on and renegotiate scope
B) The team ignores the defect until the next sprint planning so that the sprint goal is protected
C) The scrum master assigns the defect to the most experienced developer without consulting anyone
D) The team cancels the sprint immediately and starts a new sprint dedicated to the defect
= A
? Urgent work can enter a sprint, but the product owner and developers decide together and renegotiate scope to keep the sprint coherent. Only the product owner can cancel a sprint, which is rarely needed for a single defect.

@@ BE3 | Predictive
The change control board rejected a customer's change request after reviewing its impact. The customer insists the change is essential. What should the project manager do?
A) Communicate the decision and reasons, log it and explain the escalation route
B) Implement the change anyway, since keeping the customer satisfied is the project manager's priority
C) Ask the change control board to reconsider immediately without any additional information
D) Tell the customer that the decision is final and that no further discussion is possible
= A
? Decisions are communicated with their rationale and recorded. If the customer disagrees, the governance framework defines how a decision can be appealed or escalated.

@@ BE3 | Predictive | match
Match each configuration management activity with its purpose.
1) Configuration identification
2) Configuration status accounting
3) Configuration verification and audit
4) Change log
A) Defines which items are placed under configuration control
B) Records and reports the current state of controlled items
C) Confirms items meet requirements and approved changes were implemented
D) Lists change requests and their status
= 1-A, 2-B, 3-C, 4-D
? Configuration management identifies, tracks and verifies controlled items; the change log records change requests and decisions.

@@ BE4 | Agile
For two sprints, the team has been waiting several days each time for the IT operations department to provision cloud environments. What should the scrum master do?
A) Work with IT operations to streamline provisioning, such as self-service
B) Ask the developers to set up their own environments using personal cloud accounts and credit cards
C) Accept the delays as part of working in a large organisation and lower the sprint commitments
D) Report IT operations to the sponsor as the cause of the team's low velocity in recent sprints
= A
? Servant leaders remove systemic impediments by working with other departments. Personal accounts bypass security and finance controls; blaming or simply accepting the delay does not solve the problem.

@@ BE4 | Predictive
During testing, the team discovers a design flaw that will require rework of a component already built. What should the project manager do first?
A) Record the issue in the issue log, assign an owner and analyse its impact
B) Submit a change request to extend the schedule by the estimated rework time
C) Inform the customer that the component will be delivered late
D) Ask the designer who made the mistake to fix it in their own time
= A
? Issues are logged, owned and analysed before decisions are made about schedule changes or communication. Blame does not solve the problem.

@@ BE4 | Hybrid
A key supplier has gone bankrupt. This risk had been identified, and a contingency plan to use a pre-qualified alternative supplier exists. What should the project manager do?
A) Ensure the risk owner executes the contingency plan and manage the situation as an issue
B) Begin identifying new suppliers through a full procurement process to find the best price
C) Record the bankruptcy as a new risk and analyse its probability and impact
D) Inform the sponsor and wait for instructions before taking any action
= A
? Once a risk occurs, it becomes an issue and the planned response is executed. Starting from scratch ignores the preparation already done.

@@ BE4 | Agile
The team has raised the same impediment — conflicting priorities set by two vice presidents — at every retrospective for two months. The scrum master has been unable to resolve it. What should the scrum master do?
A) Escalate it to the right decision-maker with impact data and options
B) Stop recording it, since the team cannot change decisions made by the vice presidents
C) Ask the team to choose whichever vice president's priorities seem more reasonable each sprint
D) Ask the product owner to stop attending meetings with the two vice presidents
= A
? When an impediment is beyond the team's and scrum master's authority, it should be escalated with evidence and options. Ignoring it or improvising priorities leaves the root cause in place.

@@ BE4 | Predictive | multi
Which two pieces of information should every entry in the issue log contain? (Choose two.)
A) An owner responsible for resolving the issue
B) A target date for resolution
C) The probability that the issue will occur
D) The organisation's risk appetite
E) The team's average velocity
= A, B
? Issues are current problems, so the log tracks owner, actions, target dates and status. Probability applies to risks, not issues.

@@ BE5 | Predictive | fill
A threat has a 20% probability of causing a $100,000 loss. An opportunity has a 30% probability of producing a $40,000 saving. What is the combined expected monetary value? (Answer in dollars, include the sign.)
= -$8,000
? EMV threat = 0.20 × −100,000 = −20,000; EMV opportunity = 0.30 × 40,000 = +12,000; combined = −$8,000.

@@ BE5 | Agile
The team is unsure whether a new payment library can handle the required transaction volume. Choosing wrongly would cause major rework later. What should the team do?
A) Run a timeboxed spike to test the library against the expected load
B) Select the library and deal with any performance issues after release
C) Choose the most popular library, since popularity indicates performance
D) Postpone the decision until the last sprint before the release
= A
? A spike reduces technical uncertainty early and cheaply. Waiting or deciding on popularity leaves a significant risk unaddressed.

@@ BE5 | Hybrid
During a risk review, the project manager finds that the response for a high-priority risk — training the support staff before go-live — has not started, although the plan said it should begin last month. What should the project manager do?
A) Follow up with the risk owner to implement the response and update the register
B) Close the risk, since the training was evidently not urgent enough to start on time
C) Wait until go-live to see whether the risk actually occurs before taking any action
D) Transfer the risk to the support team's manager without discussing it further
= A
? Planned responses only reduce risk if they are implemented. The risk owner must act, and the register should reflect the current status.

@@ BE5 | Predictive
The buyer requires the construction contractor to provide a performance bond, so that the buyer is compensated if the contractor fails to complete the work. Which risk response strategy is this?
A) Transfer
B) Mitigate
C) Avoid
D) Accept
= A
? A performance bond shifts the financial impact of non-performance to a third party (the surety), which is risk transfer.

@@ BE5 | Agile
A new open-source component could reduce development time by three weeks if it works with the team's architecture. The team assigns its strongest developer to evaluate and integrate it quickly. Which response strategy is this?
A) Enhance the opportunity
B) Exploit the opportunity
C) Share the opportunity
D) Accept the opportunity
= A
? Assigning strong resources increases the probability that the opportunity is realised, which is enhancing. Exploiting would make it certain; sharing would involve a third party.

@@ BE5 | Predictive
To avoid a port strike, the team reroutes a shipment through another country. This creates a new risk of customs delays at the border. How should this new risk be classified and handled?
A) As a secondary risk, to be recorded, analysed and given its own response
B) As a residual risk that needs no further analysis because it is small
C) As an issue that has already occurred and must be logged immediately
D) As part of the original strike risk, so no separate entry is needed
= A
? A risk arising directly from implementing a response is a secondary risk. It must be identified, analysed and planned for like any other risk.

@@ BE6 | Agile
Retrospectives produce long lists of improvement ideas, but few are ever implemented. What should the scrum master do?
A) Help the team pick one or two improvements with owners and track them next sprint
B) Cancel retrospectives until the team has implemented all of the ideas already on the list
C) Ask the project manager to decide which improvements the team must implement each sprint
D) Collect all ideas in a document and send it to management at the end of the project
= A
? Focusing on a few owned, visible actions turns retrospectives into real continuous improvement. Cancelling or delegating improvement decisions removes team ownership.

@@ BE6 | Predictive
At the end of the design phase of a three-phase project, what should the project manager do regarding lessons learned?
A) Hold a lessons learned session and apply the relevant lessons to the next phase
B) Wait until the end of the project so that all lessons can be captured together
C) Ask each team member to write their lessons in a personal notebook
D) Capture only the problems, since successes do not need to be recorded
= A
? Lessons learned are captured throughout and applied immediately where possible, including successes worth repeating.

@@ BE6 | Hybrid
The team introduces a new peer-review approach to reduce defects. It has now been used for two iterations. According to the PDCA cycle, what should the team do next?
A) Check results against the expected improvement, then adopt, adjust or abandon it
B) Make the new approach mandatory across all teams in the organisation immediately
C) Stop measuring defects, since the new approach has already been put into practice
D) Introduce three further process changes at the same time to accelerate improvement
= A
? After Plan and Do comes Check (measure the effect) and then Act (standardise or adjust). Changing many things at once makes it impossible to know what worked.

@@ BE6 | Agile
Participation in retrospectives has dropped, and team members say the meetings feel repetitive. What should the scrum master do?
A) Vary the formats and make sure agreed actions are followed through
B) Make attendance mandatory and record who speaks during each meeting
C) Hold retrospectives only once per quarter to reduce the time they take
D) Let the product owner run the retrospectives to give them more authority
= A
? Fresh formats renew engagement, and visible follow-through shows that retrospectives matter. Forcing participation or reducing frequency weakens continuous improvement.

@@ BE6 | Predictive
While planning risks, the project manager notices that the organisation's risk checklist template is outdated and misses several common risks. What should the project manager do?
A) Use an improved version on the project and propose the update to the PMO
B) Use the template as it is, since templates are organisational standards
C) Ignore the template and identify risks without any checklist at all
D) Wait until project closure to mention the problem in the final report
= A
? Improving organisational process assets helps the whole organisation, not just this project. Raising it with the PMO ensures the template is updated properly.

@@ BE7 | Hybrid
Several departments are resisting the new ERP system and continue using their old spreadsheets. What should the project manager do first?
A) Understand the reasons for the resistance by engaging the users and their managers
B) Disable the old spreadsheets so that users have no alternative to the new system
C) Report the departments that resist to the sponsor and ask for disciplinary measures
D) Declare the project complete, since the system itself was delivered as specified
= A
? Resistance often signals real concerns such as missing training, workload or usability problems. Understanding them enables targeted actions; force or blame tends to increase resistance.

@@ BE7 | Agile
Employees understand why the new claims process is needed, but they show no willingness to participate in the pilot. According to the ADKAR model, which element needs attention?
A) Desire
B) Awareness
C) Knowledge
D) Reinforcement
= A
? Awareness of the need for change exists, but desire to participate is missing. Actions should address personal motivations, such as involvement and what's in it for them.

@@ BE7 | Predictive
The sponsor plans to announce a major restructuring that the project will implement. According to Kotter's model, what should be done first?
A) Create a sense of urgency
B) Generate short-term wins
C) Anchor the change in the culture
D) Remove obstacles to change
= A
? Kotter's first step is establishing urgency, followed by forming a guiding coalition and developing and communicating the vision.

@@ BE7 | Agile
The same customer service agents are affected by four other change initiatives this quarter, and the project plans to roll out a new tool to them next month. What should the project manager do?
A) Coordinate with the other initiatives to assess readiness and sequence the changes
B) Roll out the tool as planned, since the project has its own committed deadline to meet
C) Postpone the tool indefinitely until all of the other initiatives have been completed
D) Ask the agents' managers to make the tool mandatory for all agents from the first day
= A
? Change saturation reduces adoption. Coordinating across initiatives to sequence changes and assess readiness supports successful adoption.

@@ BE7 | Hybrid
In the first weeks after a new system goes live, productivity in the finance team drops, and some managers want to switch back to the old system. What should the project manager do?
A) Explain that a temporary dip is expected and increase support and coaching
B) Switch back to the old system, since the drop shows that the new one is not working
C) Ignore the managers' concerns, since the dip will disappear on its own eventually
D) Extend the finance team's working hours until productivity returns to normal levels
= A
? Change models such as Satir's show a temporary performance dip before improvement. Support and coaching help people through it; reverting prematurely loses the benefits.

@@ BE7 | Agile
Before rolling out a new mobile app to 2,000 field technicians, what should the project manager do to support adoption?
A) Assess readiness: training, support arrangements and leadership sponsorship
B) Send the download link to all technicians and let them learn the app on their own
C) Roll out the app to all technicians at once so that the project finishes faster
D) Delay the rollout until every technician has personally asked for the new app
= A
? A readiness assessment identifies gaps in training, support and sponsorship so that they can be addressed before rollout.

@@ BE8 | Predictive
Inflation has increased the cost of construction materials by 15% since the budget was approved. What should the project manager do?
A) Analyse the impact on the budget and business case and give the sponsor options
B) Absorb the increase by reducing the quality of the materials used in the building
C) Use the contingency reserve without informing the sponsor of the cost increase
D) Stop the project until material prices return to their original levels
= A
? External economic changes may affect the project's viability. The PM analyses the impact and gives decision-makers options; silently cutting quality or using reserves without transparency is inappropriate.

@@ BE8 | Agile
A competitor has just released a feature similar to the one the team planned for next quarter. What should the product owner do?
A) Reassess the backlog priorities in light of the new market information
B) Continue with the original roadmap, since it was approved by the sponsor
C) Copy the competitor's feature exactly and release it as soon as possible
D) Cancel the product, since the competitor has taken the market
= A
? Adaptive planning uses new market information to reprioritise. Sticking rigidly to the roadmap, copying blindly or cancelling without analysis are not value-focused responses.

@@ BE8 | Hybrid
A new national law on the use of artificial intelligence will apply to the recommendation engine the project is building. What should the project manager do first?
A) Assess the law's requirements and impact with legal and compliance experts
B) Continue as planned and adapt the product after the law comes into force
C) Remove the recommendation engine from scope to avoid any legal exposure
D) Ask the developers to interpret the law and adjust the code themselves
= A
? External regulatory changes require expert analysis of their impact before changes are planned through governance and the backlog.

@@ BE8 | Predictive
A major equipment contract is priced in a foreign currency, and that currency has strengthened by 12% against the organisation's currency. Payment is due in six months. What should the project manager do?
A) Work with finance to assess the impact and consider hedging, updating the risk register
B) Wait until the payment date, since exchange rates may move back in the organisation's favour
C) Ask the supplier to accept payment in the organisation's currency at the old exchange rate
D) Cancel the equipment contract and look for a domestic supplier, regardless of the cost
= A
? Exchange-rate exposure is an external risk. Finance experts can quantify it and propose responses such as hedging; waiting is passive acceptance without analysis.

@@ BE8 | Agile | multi
The team is scanning the external environment using PESTLE. Which two items are external factors that it should monitor? (Choose two.)
A) A proposed data protection law that would affect the product
B) Rising interest rates that may reduce customer demand
C) The team's falling velocity over the last three sprints
D) An internal reorganisation of the IT department
E) The team's definition of done
= A, B
? PESTLE covers political, economic, social, technological, legal and environmental factors outside the organisation. Velocity, reorganisations and the definition of done are internal.
