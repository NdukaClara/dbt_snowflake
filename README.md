Data Pipeline with dbt + Snowflake + Airflow (Astronomer Cosmos)

When I set out to build this project, my goal was simple: showcase how modern data teams transform raw, messy data into trusted insights that drive business decisions.

I discovered that Snowflake provides a TPC-H sample dataset out of the box — it mimics a retail/e-commerce business with customer orders and line items. This dataset gave me the perfect playground to design a realistic data pipeline without needing to hunt for external data.

The challenge I posed to myself:
👉 If I were the data engineer in charge of powering analytics for this business, how would I design the pipeline?

This project answers that question. Using dbt for transformations and testing, Snowflake as the cloud data warehouse, and Airflow with Astronomer Cosmos for orchestration, I built an end-to-end pipeline that:

Standardizes raw order data

Applies business logic (e.g., revenue, discounts, order item summaries)

Ensures data quality with automated tests

Produces a fact table that analysts or BI tools could query to answer questions like:

What are the total sales and discounts by date?

Which customers or products drive the most revenue?

Are there anomalies in pricing or order dates?

In a real company, this means the finance team could track revenue with confidence, the sales team could measure discounts vs. margins, and the executive team could see performance trends — all powered by this pipeline.

📌 Project Architecture
flowchart TD
    A[Snowflake TPC-H Source Data] --> B[Staging Models (dbt)]
    B --> C[Intermediate Models]
    C --> D[Fact Tables & Data Marts]
    D --> E[Testing: Generic + Singular]
    E --> F[Orchestration with Airflow (Cosmos)]

🚀 Features & Workflow
1. Data Source

Snowflake’s TPC-H sample dataset (orders, line_items tables).

Acts as the raw system-of-record for customer orders.

2. Staging Models

Clean and standardize raw data.

Apply consistent naming conventions and data type casting.

3. Intermediate Models

Combine multiple staging models.

Create reusable transformations such as order item summaries.

4. Fact & Mart Models

Business-ready fact table: fct_orders.

Includes calculations such as discounted amounts and revenue metrics.

5. Testing

Generic tests → validate schema, nulls, unique IDs.

Singular tests → ensure business rules like valid date ranges and discount logic hold true.

6. Orchestration

Pipeline is orchestrated using Airflow (Astronomer Cosmos), running locally.

dbt models execute as tasks in an Airflow DAG.

7. Governance

Implemented Snowflake RBAC: warehouses, roles, schemas, and privileges.

🛠️ Tech Stack

Snowflake → Cloud data warehouse & TPC-H dataset.

dbt (Data Build Tool) → SQL-based transformations, testing, and data modeling.

Airflow + Astronomer Cosmos → Orchestration.

VS Code + Bash Terminal → Development environment.

⚡ Business Impact

If this pipeline were running in a live company:

📈 Revenue Analysis → Executives track sales & discount trends over time.

🛒 Customer Insights → Marketing identifies top customers & purchasing behavior.

💸 Profitability Tracking → Finance validates margins after discounts.

✅ Data Trust → Automated tests ensure stakeholders rely on accurate reports.

By the end of the pipeline, the company would move from “we have raw data but can’t use it” → “we have tested, trustworthy insights driving real decisions.”
