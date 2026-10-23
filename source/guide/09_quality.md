# Chapter 9 — Quality: Embedded Across Governance and Scope

**After this chapter you should be able to:**
- explain where quality planning, assurance and control live in the Eighth Edition;
- distinguish quality from grade, and precision from accuracy;
- calculate and classify the cost of quality;
- use the seven basic quality tools and interpret a control chart;
- apply quality practices in adaptive teams (definition of done, test automation, continuous integration).

## 9.1 Quality in the Eighth Edition

**Quality** is the degree to which a set of inherent characteristics fulfils requirements. Two classic definitions summarise it: **conformance to requirements** (Crosby) and **fitness for use** (Juran). Quality must satisfy both the *stated* requirements and the *real needs* of stakeholders.

There is no Quality performance domain. Following the principle **Embed quality into processes and deliverables**:

| Quality activity | Eighth Edition home | Focus |
|---|---|---|
| **Quality planning** — identify standards, requirements, metrics; plan cost of quality; design tests | **Define Scope** (Scope domain) | Decide what "good" means and how it will be achieved and verified |
| **Quality assurance** — confirm processes are adequate and followed; improve them | **Manage Quality Assurance** (Governance domain) | The **process** |
| **Quality control** — inspect and test deliverables; measure results | **Monitor and Control Scope** (Scope domain) | The **product** |

The PMP exam task *Plan and optimise quality of products/deliverables* (Process domain) covers all three.

## 9.2 Key concepts

**Quality vs grade**
- **Quality** = how well the product meets requirements. Low quality is **always a problem**.
- **Grade** = a category assigned to products with the same functional use but different technical characteristics (e.g., economy vs business class). Low grade **may be acceptable** if it meets the requirements.
- *Example:* a low-grade software product with few features and no defects is acceptable; a high-grade product full of defects is not.

**Precision vs accuracy**
- **Precision** = repeated measurements are clustered closely (consistency).
- **Accuracy** = the measured value is close to the true value (correctness).
- Precise measurements are not necessarily accurate, and vice versa.

**Prevention over inspection** — quality is planned, designed and built in, not inspected in. The cost of preventing mistakes is generally much lower than the cost of correcting them when found by inspection or by customers.

**Continuous improvement** — the **Plan-Do-Check-Act (PDCA)** cycle (Shewhart, popularised by Deming) underlies modern quality management. **Kaizen** = continuous small improvements by everyone.

**Management responsibility** — success requires participation of all team members, but management provides the resources and environment for quality (Deming estimated most quality problems originate in the system, not in individual workers).

**Mutually beneficial partnership with suppliers** — quality of procured items affects quality of the whole.

### Quality theorists you may meet in questions

| Name | Key idea |
|---|---|
| **W. Edwards Deming** | PDCA, 14 points for management, most problems are system problems; reduce variation |
| **Joseph Juran** | Fitness for use; quality trilogy (planning, control, improvement); Pareto principle (80/20) applied to quality |
| **Philip Crosby** | Conformance to requirements; zero defects; "quality is free" (cost of non-conformance) |
| **Walter Shewhart** | Statistical process control; control charts; Plan-Do-Study/Check-Act |
| **Kaoru Ishikawa** | Cause-and-effect (fishbone) diagram; quality circles |
| **Genichi Taguchi** | Quality loss function; design of experiments |

### Quality methodologies

- **Total Quality Management (TQM)** — organisation-wide, customer-focused, continuous improvement.
- **Six Sigma** — reduce variation and defects to 3.4 defects per million opportunities; **DMAIC** (Define, Measure, Analyse, Improve, Control) to improve existing processes; DMADV for new designs.
- **Lean** — eliminate waste and maximise flow (see Chapter 15).
- **ISO 9000 family** — quality management system standards.

## 9.3 Cost of quality (COQ)

| **Cost of conformance** (money spent to *avoid* failures) | **Cost of non-conformance** (money spent *because of* failures) |
|---|---|
| **Prevention costs** — build a quality product: training, documenting processes, equipment, time to do it right, design reviews | **Internal failure costs** — failures found *by the project*: rework, scrap |
| **Appraisal costs** — assess the quality: testing, destructive testing loss, inspections | **External failure costs** — failures found *by the customer*: liabilities, warranty work, lost business, reputation |

> **Exam tip.** Spending on prevention and appraisal is usually justified because external failures are the most expensive. A question that asks "which is the most expensive cost of quality?" is pointing at **external failure**. Also note: **warranty claims** = external failure; **inspection** = appraisal; **training** = prevention; **rework before delivery** = internal failure.

## 9.4 Quality metrics and the quality management plan

A **quality metric** describes a product or project attribute and how it is measured, with an allowable variation — the **tolerance**. Examples: defect density, failure rate, on-time performance, availability (99.9%), customer satisfaction score, test coverage, mean time between failures.

The **quality management plan** (planned within Define Scope) describes: quality standards adopted; quality objectives; roles and responsibilities; deliverables and processes subject to review; quality control and assurance activities; tools; procedures for handling non-conformance, corrective actions and continuous improvement.

## 9.5 The seven basic quality tools

| Tool | What it shows | Typical use |
|---|---|---|
| **Cause-and-effect (fishbone, Ishikawa) diagram** | Possible causes grouped in categories (e.g., people, methods, machines, materials, measurement, environment) leading to an effect | Root-cause analysis; often combined with the **5 Whys** |
| **Flowchart (process map)** | Steps, decisions and flow of a process (SIPOC: suppliers, inputs, process, outputs, customers) | Find inefficiencies and failure points |
| **Check sheet (tally sheet)** | Counts of occurrences by category | Collect data on defects efficiently |
| **Pareto diagram** | Vertical bars ordered by frequency, with a cumulative line | Focus on the **vital few** causes that produce most problems (80/20 rule) |
| **Histogram** | Distribution of data (bar chart of frequencies) | Show shape and spread of measurements |
| **Control chart** | Process data over time against control limits | Determine whether a process is **stable/predictable** |
| **Scatter diagram** | Relationship between two variables | Identify **correlation** (not proof of causation) |

Other useful tools: **affinity diagrams**, **matrix diagrams**, **mind maps**, **logical data models**, **design of experiments (DOE)**, **statistical sampling**, **benchmarking**, **audits**, **checklists**.

### Control charts in detail

- **Mean** — the centre line of the process.
- **Upper and lower control limits (UCL/LCL)** — typically set at **±3 sigma** from the mean; they reflect the *voice of the process* and are calculated from process data.
- **Specification limits** — set by the *customer* or requirements (voice of the customer). A process can be in control but still not meet specifications, if the specification limits are tighter than the control limits.
- **Out of control** when:
  - a single point falls **outside** a control limit; or
  - the **rule of seven**: seven consecutive points fall on one side of the mean (a non-random trend), even if all are within limits.
- **Common-cause (random) variation** is inherent in the process; **special-cause (assignable) variation** has a specific, identifiable cause that should be investigated.

### Statistical sampling

- **Attribute sampling** — the result conforms or does not (pass/fail).
- **Variable sampling** — the result is rated on a continuous scale measuring the degree of conformity.
- Sampling is used when inspecting everything is too costly or destructive.

### Sigma levels (for reference)

| ± sigma | % of values within limits |
|---|---|
| 1σ | 68.27% |
| 2σ | 95.45% |
| 3σ | 99.73% |
| 6σ | 99.9999998% (Six Sigma programmes target 3.4 defects per million, allowing a 1.5σ shift) |

## 9.6 Quality assurance in practice (Manage Quality Assurance)

- **Quality audits** — structured, independent reviews to determine whether project activities comply with policies, processes and procedures; identify good practices, gaps and non-conformities; share good practices; support process improvement.
- **Process analysis** — identify improvements, non-value-adding activities, constraints.
- **Design for X (DfX)** — design to optimise a particular characteristic (cost, reliability, manufacturability, serviceability, sustainability).
- **Problem solving** — define the problem, identify root cause, generate solutions, choose, implement, verify.
- Output: **quality reports** (issues, recommendations for corrective actions), **test and evaluation documents**, change requests.

## 9.7 Quality in adaptive teams

- **Definition of done** — a shared, explicit quality standard for every increment.
- **Acceptance criteria** for each story, often written as examples (behaviour-driven development: *Given – When – Then*).
- **Test-driven development (TDD)**, **automated testing**, **continuous integration and delivery (CI/CD)** — build quality in and get fast feedback.
- **Pair programming**, **mob programming**, **code reviews** — real-time inspection and knowledge sharing.
- **Refactoring** — continuously improve the design to keep technical debt low.
- **Retrospectives** — inspect and adapt the process every iteration (continuous improvement).
- **Small batch sizes** — reveal problems early; reduce the cost of fixing them.
- **Escaped defects** — a key quality metric: defects found after release.

> **Trap.** "The team is behind; skip testing this sprint and catch up later" is never the right answer. Lowering the definition of done creates technical debt and violates the principle of embedding quality. The right answer usually involves the product owner adjusting **scope**, not quality.

%%QUESTIONS%%
@@
A software product has few features but no defects and meets all requirements. Another product has many features but frequent crashes. Which statement is correct?
A) The first is low grade but high quality; the second is high grade but low quality
B) Both products are low quality
C) The first product is low quality because it has few features and only basic functions
D) Grade and quality mean the same thing
= A
? Grade refers to the category of features; quality refers to how well requirements are met. Low grade can be acceptable; low quality is always a problem.

@@
Which cost of quality category does the cost of handling warranty claims belong to?
A) External failure costs
B) Internal failure costs
C) Appraisal costs
D) Prevention costs
= A
? Failures discovered by the customer, such as warranty work and liability, are external failure costs and are usually the most expensive.

@@
Seven consecutive measurements on a control chart fall above the mean but within the control limits. What should the project manager conclude?
A) The process may be out of control and the cause should be investigated
B) The process is in control, because all of the points are still within the control limits
C) The specification limits must be widened
D) The control limits were calculated incorrectly
= A
? Under the rule of seven, seven consecutive points on one side of the mean indicate a non-random pattern, so the process should be investigated even though no point is outside the limits.

@@
A team wants to focus its improvement effort on the few causes responsible for most defects. Which tool is most appropriate?
A) Pareto diagram
B) Scatter diagram
C) Control chart
D) Flowchart
= A
? A Pareto diagram ranks causes by frequency, highlighting the vital few that produce the majority of problems.

@@
Which activity is an example of quality assurance rather than quality control?
A) Auditing whether the team follows the agreed testing process
B) Inspecting a batch of manufactured parts
C) Running test cases on a completed module
D) Measuring the dimensions of a delivered component against the drawing
= A
? Assurance focuses on processes, for example quality audits. Inspecting and testing deliverables are quality control activities.

@@
Measurements of a part are tightly clustered but consistently 2 mm away from the true value. How would you describe them?
A) Precise but not accurate
B) Accurate but not precise
C) Both precise and accurate
D) Neither precise nor accurate
= A
? Tightly clustered results are precise; being consistently off the true value means they are not accurate.

@@
Who sets the specification limits used alongside a control chart?
A) The customer or the requirements
B) The process data, at three standard deviations from the mean
C) The project management office, at random
D) The scrum master
= A
? Specification limits reflect customer requirements. Control limits are calculated from process data, typically at plus or minus three sigma.

@@
A team member says, "We are behind schedule; let's skip unit testing for this sprint." What is the best response from the project manager or scrum master?
A) Keep the definition of done and adjust the sprint scope with the product owner
B) Agree, as long as all of the testing is done before the final release to customers
C) Ask the sponsor to approve skipping tests
D) Let the testers decide alone
= A
? Quality is not negotiable within the definition of done. When time is short, the scope of the sprint is negotiated with the product owner rather than lowering quality.

@@ | multi
Which two items are prevention costs? (Choose two.)
A) Training the team in a new coding standard
B) Design reviews before construction
C) Rework of defective units before shipment
D) Product recalls
E) Final inspection of finished goods
= A, B
? Prevention costs are incurred to avoid defects, such as training and design reviews. Rework is internal failure, recalls are external failure and inspection is appraisal.

@@
Which quality tool would best show whether there is a relationship between the number of training hours and the number of defects per developer?
A) Scatter diagram
B) Histogram
C) Check sheet
D) Cause-and-effect diagram
= A
? A scatter diagram plots two variables to reveal correlation. It does not by itself prove causation.

@@
In the Eighth Edition, where are quality metrics and the quality management plan primarily developed?
A) As part of Define Scope
B) As part of Manage Quality Assurance
C) As part of Close Project or Phase
D) As part of Acquire Resources
= A
? Quality planning has been incorporated into Define Scope, where quality requirements, metrics and the approach to verification are defined alongside the scope.

@@
Which quality theorist is most associated with the idea that "quality is free" and the goal of zero defects?
A) Philip Crosby
B) Joseph Juran
C) Kaoru Ishikawa
D) Walter Shewhart
= A
? Crosby emphasised conformance to requirements, zero defects and the idea that the cost of non-conformance makes investment in quality pay for itself.
