 🚖 Ola Rides Marketplace Analysis: Bengaluru (Sept 2025)
📌 Project Overview

Analyzed 50,000+ Ola ride bookings in Bengaluru to understand cancellation patterns, demand–supply dynamics, and financial performance.

Tools: SQL (data cleaning, transformations, aggregations) & Power BI (data modeling, DAX, dashboards).

Goal: Optimize service efficiency, reduce cancellations, and identify actionable revenue opportunities.

🛠️ Workflow

Data Preparation (SQL)

Cleaned and standardized booking data.

Aggregated KPIs: Cancellation rate, Avg Ride Distance, Booking Value.

Created SQL views for Power BI integration.

Data Modeling (Power BI)

Built Star Schema with relationships.

Developed DAX measures: Total Booking Value, Avg Ride Value/km, VTAT (Vehicle Time to Arrive).

Visualization (Power BI Dashboards)

Interactive dashboards with filters by vehicle type, payment method, location, and time.

Heatmaps for cancellation hotspots and demand peaks.

<img width="1903" height="776" alt="Screenshot 2025-09-28 162811" src="https://github.com/user-attachments/assets/d663b105-0d11-4c94-b8a1-183c4f291723" />


🔍 Key Analyses
1. Cancellations

Segmented by drivers vs. customers.

Top reasons: Car issues, Personal reasons, Change of plans.

Peak cancellation times: 5–8 PM, especially in business hubs (e.g., Koramangala).

<img width="1459" height="780" alt="Screenshot 2025-09-28 162955" src="https://github.com/user-attachments/assets/f5225609-e31c-4e52-8774-f5ae423132ea" />


2. Operational Efficiency

Higher Avg VTAT correlated with increased cancellations.

Fleet performance: Prime Sedan had highest ratings but more cancellations vs. Autos/Mini.

<img width="1460" height="775" alt="Screenshot 2025-09-28 163107" src="https://github.com/user-attachments/assets/d2f9aa12-f5b6-41fb-b4fb-170549b68954" />


3. Financial Insights

Revenue distribution by vehicle category & payment method.

High-value rides showed lower completion success.

<img width="1462" height="772" alt="Screenshot 2025-09-28 163209" src="https://github.com/user-attachments/assets/0613bd9e-73ec-4d1f-b792-7121b00ddfd1" />

4. Ratings by Vehicle Type

Average customer ratings analyzed for Prime Sedan, Mini, Auto, and other categories

Helps identify quality of service and customer satisfaction trends

<img width="1455" height="777" alt="Screenshot 2025-09-28 164037" src="https://github.com/user-attachments/assets/f2d80921-35e6-4957-8a78-12e59fe3c00c" />


Evening rush demand not met by available supply → localized surge pricing & driver incentives recommended.

Flexible driver shift policies could reduce personal/car-related cancellations.

Improve reliability of premium rides (Prime Sedan) to capture high-value customers.

📂 Deliverables

Ola_SQL_File.sql – Queries for cleaning, aggregations, and KPIs.

Ola_DA_Project.pbix – Power BI dashboard file with interactive insights.

Dashboards & Reports – Showcasing demand trends, cancellations, and revenue metrics.

💡 *This project demonstrates how SQL + Power BI can transform raw ride-hailing data into actionable business insights for operational optimization and revenue growth.*
