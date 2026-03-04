# Macro Economics Dashboard
This project focuses on building a comprehensive, interactive dashboard designed for investors and researchers. It enables deep analytical monitoring of CountryX’s macroeconomic landscape, covering GDP, IIP, PMI, CPI, Retail Revenue, and Foreign Trade/Investment activities.

## Technologies Used
![MySQL](https://img.shields.io/badge/mysql-%2300f.svg?style=for-the-badge&logo=mysql&logoColor=white)
![Power Bi](https://img.shields.io/badge/power_bi-F2C811?style=for-the-badge&logo=microsoftpowerbi&logoColor=black)
![Power Query](https://img.shields.io/badge/Power_Query-0078D4?style=for-the-badge&logo=powerquery&logoColor=white)
![DAX](https://img.shields.io/badge/DAX-Analysis_Services-0078D4?style=for-the-badge&logo=microsoftexchange&logoColor=white)
![PowerPoint](https://img.shields.io/badge/Microsoft_PowerPoint-%23B7472A.svg?style=for-the-badge&logo=microsoft-powerpoint&logoColor=white)
![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)

## Data Overview
The dataset is sourced from official institutions (General Statistics Office, Government Customs, and Central Bank), categorized into three core pillars:

* **Real Sector:**
    * **GDP Growth:** Quarterly value growth rates and sectoral contributions.
    * **IIP (Index of Industrial Production):** Monthly momentum of the manufacturing and energy sectors.
    * **PMI (Purchasing Managers' Index):** Leading indicator for manufacturing health.
* **Consumption & Prices:**
    * **CPI (Consumer Price Index):** Inflation tracking across various commodity baskets.
    * **Retail Sales:** Revenue from consumer goods and services, reflecting domestic demand.
    * **Tourism:** Tracking passenger volume segmented by nationality (Foreign/Domestic) and transport mode.
* **External Sector:**
    * **Trade Balance:** Detailed Export/Import turnover and trade surplus/deficit.
    * **FDI (Foreign Direct Investment):** Registered and implemented capital flows.

---

## Project Steps:

1.  **ETL**:
    * Data is architected in a MySQL Database, then integrated into Power BI via Import Mode using optimized SQL queries.
    * Used Power Query for initial pre-processing before the final data load.
2.  **Data Transformation:**
    * Used Power Query to parse JSON payloads, and restructured tables using Pivot/Unpivot/Append techniques. 
    * Conducted Data Profiling to detect and clean missing values.
    * Detected exact data type for every column.
    * Using Table Duplication to architect a Star Schema by decoupling flat data into dedicated Dimension Tables.
3.  **Data Modeling:**
    * Creating dim_calendar tables with DAX.
    * Organized data into a Star Schema (Fact & Dimension tables).
4.  **Analysis & Visualization:**
    * Identified key macroeconomic metrics and performed data categorization into categorical and numerical variables.
    * Developed complex DAX measures using CALCULATE, FILTER, SUMX, and ALLSELECTED.
    * Implemented Time Intelligence functions (YoY, MoM, YTD).
    * Created and organized charts with Z-view method.
    * Leveraged Bookmarks, Slicers and Button Navigations for seamless dashboard interactivity.
5. **Performance Optimization:**
    * Configured Incremental Refresh to significantly reduce refresh duration and minimize resource consumption on the MySQL server.
    * Importing custom layouts designed by Power Point to reduce rendering time and ensure a smooth interaction for end-users.
   
---

## Conclusion

The **Macro Economics Dashboard** serves as a "Single Source of Truth" for understanding CountryX’s economic pulse. 

* **Actionable Insights:** Empowering investors to identify cyclical trends and pivot strategies before market shifts.
* **Efficiency:** Reducing the
