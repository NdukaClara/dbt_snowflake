# Data Pipeline with dbt + Snowflake + Airflow (Astronomer Cosmos)

When I set out to build this project, my goal was simple: **showcase how modern data teams transform raw, messy data into trusted insights that drive business decisions**.  

I discovered that Snowflake provides a **TPC-H sample dataset** out of the box — it mimics a retail/e-commerce business with customer orders and line items. This dataset gave me the perfect playground to design a realistic data pipeline without needing to hunt for external data.  

The challenge I posed to myself:  
👉 *If I were the data engineer in charge of powering analytics for this business, how would I design the pipeline?*  

This project answers that question. Using **dbt for transformations and testing**, **Snowflake as the cloud data warehouse**, and **Airflow with Astronomer Cosmos for orchestration**, I built an end-to-end pipeline that:
- Standardizes raw order data  
- Applies business logic (e.g., revenue, discounts, order item summaries)  
- Ensures **data quality with automated tests**  
- Produces a **fact table** that analysts or BI tools could query to answer key business questions  

---

## 📌 Project Architecture

```mermaid
flowchart TD
    A[Snowflake TPC-H Source Data] --> B[Staging Models (dbt)]
    B --> C[Intermediate Models]
    C --> D[Fact Tables & Data Marts]
    D --> E[Testing: Generic + Singular]
    E --> F[Orchestration with Airflow (Cosmos)]
