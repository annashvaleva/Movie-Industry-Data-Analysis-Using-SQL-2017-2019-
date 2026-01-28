# Movie-Industry-Data-Analysis-Using-SQL-2017-2019-

🎯 Project Goal  
The goal of this project was to analyze movie industry data using SQL in order to identify trends in movie production, audience ratings, and genre performance between 2017 and 2019.  
The project focuses on understanding how movie attributes such as release year, genre, and audience engagement (measured by total votes) relate to perceived quality and popularity.  
An additional objective was to demonstrate a complete SQL-based ETL workflow, including data import from Excel, data cleaning, normalization, and analytical querying in Microsoft SQL Server.
________________________________________

🧠 Business Questions  
• How did the number of movie releases change between 2017 and 2019?  
• Did average movie ratings increase or decrease over time?  
• Which genres achieve the highest average ratings?  
• Which genres attract the largest audiences based on vote counts?  
• Do the most popular movies also receive the highest ratings?
________________________________________

🗂️ Data  
Source: Original data provided in Excel (Movies_Dataset.xlsx), exported to CSV for repository storage  
Format: Excel / CSV → SQL Server relational database  
Time period: 2017–2019  
Data volume:  
• ~7,997 movies  
• 14,662 genre records  
Data scope:  
• Movie metadata (title, release year, duration, country)  
• Movie genres  
• Audience ratings (average rating, total votes, median rating)  
The original Excel file contains multiple sheets (movies, ratings, genres), each imported separately into SQL Server.
________________________________________

🔧 Tools & Technologies  
• Microsoft SQL Server – database creation and analysis  
• T-SQL – ETL, data cleaning, validation, and analysis  
• Excel – source data  
• SQL Server Import and Export Wizard (SSIS) – data ingestion  
________________________________________

## 📁 Project Structure
<pre>
Movie-Industry-SQL-Analysis/
├── data/
│   └── movies_dataset.csv
├── sql/
│   ├── 01_data_understanding.sql
│   ├── 02_trends_and_ratings.sql
│   ├── 03_genre_analysis.sql
│   ├── 04_popularity_vs_rating.sql
│   └── 05_data_validation.sql
├── results/
│   └── results.txt
└── README.md
</pre>
Note:  
RAW staging tables (movies_raw, ratings_raw, genres_raw) and clean tables  
were created directly in SQL Server as part of the ETL process.
________________________________________

📝 Analysis Process  
1. Data Preparation (ETL)  
• Created a relational database in SQL Server from scratch  
• Imported Excel data into RAW staging tables  
• Stored all RAW columns as NVARCHAR to avoid truncation and conversion errors  
• Identified and fixed a schema inconsistency (coutry → country)  

2. Data Cleaning & Validation  
• Converted columns to appropriate data types (INT, DECIMAL)  
• Validated rating ranges (1–10)  
• Checked for NULL values in core dimension tables  
• Verified referential integrity between movies, ratings, and genres  

3. Exploratory Data Analysis (EDA)  
• Number of movies released per year  
• Average ratings by year  
• Audience engagement based on total votes  

4. Core Analysis  
• Comparison of movie quality trends across years  
• Identification of the most popular movies and franchises  
• Genre-level analysis: average rating vs audience size  

________________________________________

📈 Results & Insights 
 • The highest number of movies was released in 2017, followed by a decline in subsequent years  
• Despite fewer releases, average movie ratings increased steadily from 2017 to 2019  
• Franchise movies dominate in terms of audience engagement (total votes)  
• Drama achieved both the highest average rating and the largest audience engagement  
• Action and Adventure genres attract large audiences but receive lower average ratings  

The analysis reveals clear shifts in production volume, audience engagement,  
and perceived quality across the 2017–2019 period.

________________________________________

💡 Business Conclusions  
• A decrease in production volume does not imply a decline in movie quality  
• Drama emerges as the most successful genre, balancing quality and popularity  
• High audience engagement does not always correlate with high ratings  
• Genre-based analysis provides valuable insights for production and marketing strategies  

________________________________________

📌 Project Deliverables

• SQL Server relational database with clean, normalized tables  
• SQL scripts (01–05) with analytical queries organized by business questions  
• results.txt – summarized analytical findings and business insights  
• README.md – full project documentation  

