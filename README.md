# Data Pipeline with dbt + Snowflake + Airflow (Astronomer Cosmos)

When I set out to build this project, my goal was simple: **showcase how modern data teams transform raw, messy data into trusted insights that drive business decisions**.  

I discovered that Snowflake provides a **TPC-H sample dataset** out of the box — it mimics a retail/e-commerce business with customer orders and line items. This dataset gave me the perfect playground to design a realistic data pipeline without needing to hunt for external data.  

The challenge I posed to myself:  
👉 *If I were the data engineer in charge of powering analytics for this business, how would I design the pipeline?*  

This project answers that question. Using **dbt for transformations and testing**, **Snowflake as the cloud data warehouse**, and **Airflow with Astronomer Cosmos for orchestration**, I built an end-to-end pipeline that:
- Standardises raw order data  
- Applies business logic (e.g., revenue, discounts, order item summaries)  
- Ensures **data quality with automated tests**  
- Produces a **fact table** that analysts or BI tools could query to answer key business questions  

---

## 📌 Project Architecture

flowchart TD

    A[Snowflake TPC-H Source Data] --> B[Staging Models (dbt)]

    B --> C[Intermediate Models]
    
    C --> D[Fact Tables & Data Marts]
    
    D --> E[Testing: Generic + Singular]
    
    E --> F[Orchestration with Airflow (Cosmos)]

## 🚀 Features & Workflow

1. **Data Source**  
   - Snowflake’s **TPC-H** sample dataset (`orders`, `line_items` tables).

2. **Staging Models**  
   - Clean and standardise raw data.

3. **Intermediate Models**  
   - Combine staging models to build reusable transformations.

4. **Fact & Mart Models**  
   - Business-ready fact table: `fct_orders`.

5. **Testing**  
   - **Generic tests** → validate schema, nulls, unique IDs.  
   - **Singular tests** → enforce business rules.

6. **Orchestration**  
   - Orchestrated using **Airflow (Astronomer Cosmos)**.

7. **Governance**  
   - Implemented **Snowflake RBAC**.

---

## 🛠️ Tech Stack

- **Snowflake** (Cloud Data Warehouse)  
- **dbt** (Transformations & Testing)  
- **Apache Airflow** + **Astronomer Cosmos** (Orchestration)  
- **VS Code** & **Bash Terminal** (Development)

---

## ⚡ Business Impact

This pipeline simulates how a real company can leverage modern data tools to unlock insights:

- 📈 **Revenue Analysis** — accurate reporting of sales & discounts  
- 🛒 **Customer Insights** — understand purchasing patterns  
- 💸 **Profitability Tracking** — measure margins & performance  
- ✅ **Trusted Data** — quality checks ensure analysts can rely on metrics

---

## 📂 Project Structure


├── dags/                # Airflow DAGs

├── dbt/                 # dbt project folder

│   ├── models/          # staging, intermediate, fact models

│   ├── macros/          # custom dbt macros

│   └── tests/           # singular & generic tests

├── requirements.txt     # Python dependencies

├── Dockerfile           # Airflow runtime image

└── README.md            # Project documentation


---

## ✅ Summary of Skills Demonstrated

- **Cloud Data Warehousing** (Snowflake)  
- **Data Modeling & Transformations** (dbt)  
- **Testing & Data Quality** (dbt tests)  
- **Workflow Orchestration** (Airflow + Astronomer Cosmos)  
- **Role-Based Access Control** (Snowflake RBAC)  
- **End-to-End Pipeline Development & Documentation**  

---

✨ This project highlights how a data engineer can turn raw transactional data into **analytics-ready insights** — the kind of pipeline that empowers businesses to make smarter, faster, **data-driven decisions**.


