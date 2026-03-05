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

## Project Structure:
```text
├── dashboard_demo/                   # Power BI specialized files
│   ├── 202603_Demo Macro Economics Dashboard.gif 
│   └── 202603_Demo Macro Economics Dashboard.pdf      
├── Code/
│   └── Measure_samplesd.dax
│   └── M_Code.m
├── LICENSE
└── README.md                    # Project documentation
```
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
    * Leveraged **Tooltips, Bookmarks, Slicers and Button Navigations** for seamless dashboard interactivity.
5. **Performance Optimization:**
    * Configured Incremental Refresh to significantly reduce refresh duration and minimize resource consumption on the MySQL server.
    * Importing custom layouts designed by Power Point to reduce rendering time and ensure a smooth interaction for end-users.
   
---

## Conclusion

The **Macro Economics Dashboard** serves as a "Single Source of Truth" for investors and researchers to have a comprehensive CountryX's Macro Economics outlook. 
Here are some key findings:
1. **Robust Recovery & Growth Momentum:**
   * CountryX’s GDP maintains a strong upward trajectory, demonstrating remarkable resilience post-pandemic. Despite the COVID-19 slowdown, the economy recovered swiftly, surpassing pre-pandemic levels. A current growth rate of approximately 10% positions CountryX as a top-tier performer among developing economies.
   * Services, Manufacturing, and Construction remain the primary engines of both total value and growth rate. 
   * The Industrial Production Index (IIP) shows consistent stability with 8.3% in current quarter, serving as a confirmatory indicator of solid industrial health.
   * However, recent PMI below the 50-point threshold suggest a Industrial leaders's contractionary sentiment for near-term.

2. **Slow Consumption Growth & Stablely Controlled Inflation:**
   * The consumption landscape remains lackluster. While nominal retail sales continue to trend upward (+0.85%), the real growth rate—after accounting for inflation (-1.75%) indicates that domestic purchasing power shows limited recovery.
   * The only outlier in retail performance is the Tourisms sector, which surged by 21.9%. However, its impact on the overall economy remains limited as it constitutes only a marginal share (0.9%) of total retail revenue.
   * Aside from a COVID-19 related spike of 6% in Q1 2020, the Consumer Price Index (CPI) has fluctuated between 2% and 4%. On a year-over-year (YoY) basis, while Gold prices experienced a significant surge of 32.3%, other CPI components showed moderate and stable movements.

3. **Robust Foreign Trade Recovery:**
   * Trade Dynamics & Market Expansion: Export and Import values reached $36B and $32B respectively, surpassing pre-pandemic levels. The trade balance has consistently maintained a surplus. Notably, the United States remains the primary export partner, characterized by both high transaction value and robust growth over the past five years.
   * FDI Dominance in Trade: Export-import activities show a significant dependency on the FDI sector. Key growth drivers remain localized within electronics and high-tech manufacturing (around 33-35% Foreign Trade Value), highlighting the pivotal role of foreign corporations in CountryX’s global trade integration.

## Contact
*  [Linkedin](https://www.linkedin.com/in/bao-doan-833a6615a/)
