# Macro Economics Dashboard
This Project Objective is building a last-updated, comprehensive and interative Dashboard for Investors & Researchers to monitor and conduct deep analytics CountryX's Macro Economics aspects, including GDP, IIP, PMI, CPI, Retail Revenue and Foreign Trading/Investment Activities.
## 📊 Data Overview

The project utilizes a comprehensive dataset comprising key macroeconomic indicators of **CountryX**, sourced from official institutions (General Statistics Office, Central Bank) and international financial databases.

* **Real Sector:** * **GDP Growth:** Quarterly growth rates and sectoral contributions.
    * **IIP (Index of Industrial Production):** Monthly momentum of the manufacturing and energy sectors.
    * **PMI (Purchasing Managers' Index):** Leading indicator for manufacturing health.
* **Consumption & Prices:**
    * **CPI (Consumer Price Index):** Inflation tracking across various commodity baskets.
    * **Retail Sales:** Revenue from consumer goods and services, reflecting domestic demand.
* **External Sector:**
    * **Trade Balance:** Detailed Export/Import turnover and trade surplus/deficit.
    * **FDI (Foreign Direct Investment):** Registered and implemented capital flows.

---

## ⚙️ Process

The development workflow follows a standard Data Pipeline to ensure data integrity and real-time updates:

1.  **Data Acquisition (ETL):** * Automated data collection using **Python** (Pandas, Requests) to fetch data from APIs and web scraping from official portals.
    * Standardization of diverse data formats (Excel, JSON, CSV) into a unified database.
2.  **Data Transformation:**
    * Cleaning missing values and handling outliers.
    * Calculating derived metrics: **Year-on-Year (YoY)**, **Month-on-Month (MoM)**, and **Moving Averages** to smooth out seasonal fluctuations.
3.  **Data Modeling:** * Organizing data into a **Star Schema** to optimize query performance for interactive visuals.
4.  **Visualization & Analysis:**
    * Building an interactive interface with **Power BI / Tableau / Streamlit** (chọn công cụ của bạn).
    * Implementing **Slicers** (Timeframe, Indicators) and **Drill-down** features for granular analysis.

---

## 📌 Conclusion

The **Macro Economics Dashboard** serves as a "Single Source of Truth" for understanding CountryX’s economic pulse. 

* **Actionable Insights:** Empowering investors to identify cyclical trends and pivot strategies before market shifts.
* **Efficiency:** Reducing the
