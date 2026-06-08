**Sales Performance Analysis | Imagine Tech (Simulated Company)**


**Executive Summary**

Imagine Tech's sales leadership lacked visibility into the performance of their sales team. Reporting was scattered causing confusion into what was going on with sales. The business was making strategic decisions without the data to support them.

To do this project, I started talking with sales leadership to define the real business questions, then generating and modeling a realistic fake six-table SaaS dataset, cleaning and transforming the data through Excel and SQL. The goal was not a one-time answer. Leadership needed a repeatable way to see their business clearly, so the final deliverable was a Tableau dashboard that gives sales leadership an ongoing view of rep performance, quota attainment, and discounting behavior in one place.

The data revealed four critical findings: significant month-over-month gaps in rep data signaling a systemic reporting problem, only 5% of 2025 and 2026 revenue coming from new accounts, quota targets with no grounding in historical performance, and 94 deals carrying discounts over 20% that accounted for roughly 9% of revenue.

The immediate priorities are closing the data gaps with finance and ops, recalibrating quota using historical data, and getting leadership aligned on a new business strategy before the pipeline problem becomes a revenue crisis.

**Business Problem:**

Sales leadership at Imagine Tech had a visibility problem. Reporting was scattered, inconsistent, and not telling a clear story, leaving leadership to make strategic decisions based on instinct rather than data.

The core questions keeping leadership up at night were straightforward but unanswered: Are our reps making quota? Who is carrying the team and who needs support? When deals do close, how much margin are we giving away through discounting?

Without a single source of truth, there was no way to connect rep activity to business outcomes, no way to know whether the sales motion was working, where to focus coaching, or how much revenue was being left on the table. The risk was not just missed quota. It was making the wrong strategic bets without the information to know it.

**Methodology**

1. Conducted structured stakeholder scoping sessions using Claude to define business questions, identify key metrics, and align on deliverables before any data work began.
2. Generated a realistic SaaS sales dataset for Imagine Tech using Claude and Python with set parameters across six tables: sales reps, accounts, products, opportunities, closed won P&L, and forecast.
3. Mapped the data schema in Miro.
4. Cleaned and validated the dataset in Excel.
5. Wrote SQL queries to extract and transform the data using CTEs, joins, aggregation functions, and CASE statements.
6. Built the reporting suite in Tableau using custom SQL, calculated fields, LOD expressions, parameters, filters, and table calculations to visualize rep performance, quota attainment, and discounting behavior.

**Skills**:

Claude: Stakeholder scoping, project discovery, dataset generation with set parameters

Python: Pandas, dataset creation

Miro: Data schema design

Excel: Data cleaning

SQL: CTEs, joins, aggregation functions, CASE statements

Tableau: Custom SQL, calculated fields, filters, table calculations, LOD expressions, parameters

**Results**

- Rep data had noticeable revenue gaps month over month, signaling a data quality issue that would need to be resolved before reporting could be fully trusted.
- New business was nearly nonexistent, only 5% of 2025 and 2026 revenue came from new accounts.
- Quota targets were severely misaligned with actual performance.
- Discounting was quietly eroding the bottom line: 94 deals at over 20% discount accounted for approximately 9% of 2025–2026 revenue.

  
- <img width="1504" height="1192" alt="image" src="https://github.com/user-attachments/assets/9d46f563-4f6e-4b38-9289-2f396e930130" />
- <img width="1492" height="1193" alt="image" src="https://github.com/user-attachments/assets/ec780850-ac58-4f1d-a714-65e4977aec5a" />
- <img width="1923" height="1174" alt="image" src="https://github.com/user-attachments/assets/aeafc8e7-912d-40e3-9975-aaa201eb2233" />
- <img width="536" height="87" alt="image" src="https://github.com/user-attachments/assets/529be1e8-dbe0-432e-b4ec-264f7445a8e8" />





**Business Recommendations**

- Address data gaps first. Missing monthly rep revenue data undermines every other insight.
- Build a dedicated new business team. A 5% new business rate is not sustainable for a growing SaaS company.
- Recalibrate quota using historical data. Targets disconnected from reality demoralize teams and distort strategy.
- Review high-discount deals with leadership. 94 flagged deals need a conversation about behavior and process, not just numbers.

**Next Steps**

- Engage finance and ops to recover missing historical data and fill month-over-month gaps.
- Model recommended quota targets using validated historical revenue.
- Deliver the high-discount rep and deal list to leadership for coaching or policy decisions.
- Track new business revenue quarterly to measure whether a dedicated new business motion is working.
- Rerun analysis once data gaps are resolved to confirm or adjust findings.

**Additional Resources**:

Stakeholder Scoping Conversation: https://claude.ai/share/0e0191f6-e415-4a7d-9fbb-7331dbc90ef2

Data Schema
<img width="1525" height="1101" alt="image" src="https://github.com/user-attachments/assets/c3b67e6b-d852-4b03-803c-3f75cb627ca5" />
