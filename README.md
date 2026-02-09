# healthcare-finance-operations-lineage

> **“When you can’t see Finance you can’t see Operations.”**

This project demonstrates how healthcare Finance and Operations become aligned when clinical, billing, and financial systems are explicitly connected and made visible through data lineage.

This is a leadership-facing example focused on **trust, visibility, and decision support**, not tooling.

---

## Why this exists

Most healthcare organizations have access to EMR data, billing data, and financial reports — yet still struggle to answer basic questions with confidence:

• Does clinician productivity translate into collections?  
• Where is revenue delayed, lost, or misaligned?  
• Why don’t Finance and Operations see the same numbers?  

The root issue is rarely missing data.  
It is missing **connectivity and visibility** between systems.

---

## What this project shows

This dbt project illustrates:

• How clinical activity (encounters, procedures, wRVUs) originates in the EMR  
• How that activity becomes claims and payments in billing systems  
• How Finance can trace productivity all the way to cash  
• How data lineage exposes assumptions, joins, and dependencies  

The outcome is not a dashboard.  
The outcome is **confidence in how numbers are produced**.

---

## Core question answered

**How does clinician productivity actually turn into dollars?**

This project makes that path explicit by connecting:

Clinical work → Billing → Collections → Finance-ready metrics

This is the gap where Finance often loses visibility into Operations.

---

## Project structure (at a glance)

The models follow a deliberate progression that mirrors real healthcare systems:

• **Raw** – EMR, Billing, and operational source systems  
• **Staging** – Clean boundaries, light normalization  
• **Intermediate** – Systems stitched together, logic made explicit  
• **Analytics** – Finance-ready views for productivity and collections  

Each layer exists to make lineage meaningful and reviewable.

---

## Why lineage matters

Lineage is the point of this project.

Instead of asking leaders to trust a number, the project allows them to see:

• Where the data comes from  
• How systems are connected  
• Where assumptions are applied  
• Why a metric exists  

When lineage is visible, conversations shift from reconciling numbers to making decisions.

---

## What this is (and is not)

This project **is**:

• A realistic healthcare finance–operations data flow  
• A demonstration of decision-grade modeling  
• A visibility and trust example for leadership  

This project is **not**:

• A production-ready healthcare model  
• A full regulatory or compliance implementation  
• A dbt tutorial  

Clarity is prioritized over completeness.

---

## How to explore

Start with the **final clinician productivity model** and open its lineage graph.

Follow the graph upstream to see how EMR, Billing, and Finance connect.  
The lineage tells the story faster than documentation ever could.

---

## Closing

Finance doesn’t need more reports.  
Operations doesn’t need more dashboards.

They need a **shared, visible understanding** of how work becomes revenue.

That is what this project is designed to show.

---

## Contact

For support or questions about this analytics platform, please contact:

- Gideon Fernandez - Founder, Velocity Sense - at gideon@velocitysense.com
- Or visit our website at www.velocitysense.com

---
_Built with modern data stack technologies including dbt and Snowflake_