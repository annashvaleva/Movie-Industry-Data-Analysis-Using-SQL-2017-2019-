/* =====================================================
   QUESTION 1: DATA UNDERSTANDING
   Purpose: Understand database structure and data scope
   ===================================================== */
   
   -- Question 1.1: What tables are available in the database?

SELECT 
    name AS table_name
FROM sys.tables
ORDER BY name;

-- Question 1.2: How many records are stored in each table?

SELECT 'movies' AS table_name, COUNT(*) AS record_count
FROM dbo.movies

UNION ALL

SELECT 'ratings' AS table_name, COUNT(*) AS record_count
FROM dbo.ratings

UNION ALL

SELECT 'genres' AS table_name, COUNT(*) AS record_count
FROM dbo.genres;

-- Question 1.3: What is the release year range of the dataset?

SELECT 
    MIN(year) AS first_release_year,
    MAX(year) AS last_release_year
FROM dbo.movies;

/*===================================================== 
Insight:
The database consists of three core tables: movies, ratings, and genres.
The dataset contains approximately 8,000 movies released between 2017 and 2019,
providing a compact and recent time window suitable for trend and rating analysis.
===================================================== */
