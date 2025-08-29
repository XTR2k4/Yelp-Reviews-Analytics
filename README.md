# Yelp Reviews Analysis using AWS S3 & Snowflake

## 📌 Project Overview
This project demonstrates how to process and analyze Yelp reviews data using **AWS S3** for storage, **Snowflake** for ingestion & querying, and **SQL** for analysis.  
The goal was to transform raw JSON review data into structured tables, enrich it with sentiment analysis, and answer key business questions about businesses, users, and reviews.

## 🚀 Tech Stack
- **Data Storage:** AWS S3  
- **Data Warehouse:** Snowflake  
- **Query Language:** SQL  
- **Python UDF in Snowflake:** Sentiment analysis using TextBlob  

## 📂 Project Workflow
1. **Data Ingestion**  
   - Yelp review JSON data was uploaded to AWS S3.  
   - Data was ingested into Snowflake using `COPY INTO`.  
   - Script: [ingestion.sql](sql/ingestion.sql)  

2. **Data Transformation**  
   - Created structured tables for `reviews` and `businesses`.  
   - Script: [transformation.sql](sql/transformation.sql)  

3. **Sentiment Analysis**  
   - Implemented a **Snowflake UDF (Python)** using TextBlob to classify reviews as positive, neutral, or negative.  
   - Script: [sentiment-udf.sql](sql/sentiment-udf.sql)  

4. **Business Analysis**  
   - SQL queries were written to answer **10 business-driven questions**.  
   - File: [analysis_queries.md](sql/analysis_queries.md)  

## 📊 Business Questions Solved
1. Number of businesses in each category (Top 10).  
2. Top 10 users who reviewed the most restaurants.  
3. Most popular business categories by number of reviews.  
4. Top 3 most recent reviews per business.  
5. Month with the highest number of reviews.  
6. Percentage of 5-star reviews per business.  
7. Top 5 most reviewed businesses in each city.  
8. Average rating of businesses with at least 100 reviews.  
9. Top 10 users with most reviews and their reviewed businesses.  
10. Top 10 businesses with highest positive sentiment reviews.  

## 🛠 Key Features
- End-to-end workflow: **Raw JSON → AWS S3 → Snowflake → Structured Tables → SQL Analysis**  
- **Sentiment analysis UDF** integrated into Snowflake queries.  
- Optimized SQL queries (use of CTEs, window functions, joins).  
- Business-focused insights derived from raw reviews dataset.  

---

📎 **Navigation**  
- [Ingestion Script](sql/ingestion.sql)  
- [Transformation Script](sql/transformation.sql)  
- [Sentiment Analysis UDF](sql/sentiment-udf.sql)  
- [Analysis Queries + Screenshots](sql/analysis_queries.md)  
