# Exploratory Data Analysis for an online retail transactional database

## Executive Summary:

Using SQL and Tableau, I extracted and analysed transaction data from an online retailer's database to identify sales trends by country on both annual and monthly levels. The analysis revealed that the retailer's primary sales come from the UK, which accounts for 84% of total revenue and 91% of all transactions. However, other countries such as Germany, France and Ireland show seasonal spikes, particularly during the last quarter of the year. The insights can guide targeted marketing campaigns for these areas.

## Key Recommendations:
1. Increase marketing efforts in non-UK countries during seasonal peaks.
2. Optimise inventory to meet demand spikes during Q4 globally.
3. Focus on improving customer retention strategies in underperforming markets.
<br/>

### Business Problem: 

[The dataset](https://www.kaggle.com/datasets/tunguz/online-retail) contains all transactions occurring between December 1st 2010 and December 9th 2011 for a ficticious, UK-based online retail store. The company mainly sells unique all-occasion gifts, and many customers of the company are wholesalers. The company has submitted the below business problem:

*"Our business has a global customer base, but we need to know more about the geographical distribution of sales. Can you identify the top-performing countries by total revenue and transaction volume, and any insights on how sales patterns differ by country? This analysis will help us tailor regional marketing strategies and allocate resources effectively."*   
<br/>

### Methodology: 

SQL:
* Created [SQL queries](https://github.com/joeorefice/EDA-Online-Retail/blob/main/eda_online_retail.sql) that aggregate the data in the database and output invoice totals, average transaction values for invoices by country, revenue and transacton counts by country, and monthly revenue totals per country.

Tableau:
* Built a [dashboard in Tableau](https://public.tableau.com/app/profile/joe.orefice/viz/EDA-Online-Retail/Dashboard1) to visualise the resulting data aggregation.

Analysis:
* Compared sales growth rate across countries.
* Focused on identifying high-revenue periods and seasonal variations.
<br/>

### Skills:

* SQL: Aggregate functions, Window functions, date manipulation
* Tableau: ETL, calculated fields, data visualisation
* Data Analysis: Trend identification, seasonal pattern analysis, actionable insights
<br/>

### Results & Business Recommendation: 

Creating visualisations to track annual and monthly sales trends by country provides marketing and logistics teams with actionable insights into seasonal demand patterns. By democratising this data through Tableau dashboards, stakeholders now have greater visibility into regional performance, enabling more effective resource allocation. This analysis revealed that the United Kingdom contributes 84% of total revenue, while Germany, France, and Ireland show consistent Q4 growth with sales increasing by an average of 30%.

Optimising inventory to align with demand spikes in these markets during the lead up to Christmas could reduce stock issues that would prevent orders from being completed and improve customer satisfaction. Similarly, launching targeted marketing campaigns in underperforming regions, such as Norway and Switzerland, during mid-year spikes could help capture untapped opportunities.

This data-driven approach has the potential to streamline operations, enhance revenue generation, and empower teams to make more informed decisions.

![monthly_sales_trending_by_country](https://github.com/joeorefice/EDA-Online-Retail/blob/main/assets/monthly_sales_by_country.png)
![total_rev_by_country](https://github.com/joeorefice/EDA-Online-Retail/blob/main/assets/total_rev_by_country.png)
<br/>


### Next Steps: 

Develop Regional Marketing Campaigns:
* Collaborate with country-specific teams to design holiday promotions.
* Use insights from Tableau heatmaps to allocate budget effectively.

Refine Inventory Forecasting:
* Integrate sales trends into inventory models to minimise stockouts and overstock.

Track KPIs:
* Monitor monthly sales growth rates and customer retention metrics for targeted markets.
* Set benchmarks for Q4 sales improvements in Germany, France, and Ireland.

