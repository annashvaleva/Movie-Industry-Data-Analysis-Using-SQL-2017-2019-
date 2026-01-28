/* =====================================================
   QUESTION 2: EXPLORATORY DATA ANALYSIS (EDA)
   ===================================================== */

-- Question 2.1: Number of movies released per year

SELECT
    year,
    COUNT(*) AS number_of_movies
FROM dbo.movies
GROUP BY year
ORDER BY year;

-- 2.2 Average rating per year
SELECT
    m.year,
    ROUND(AVG(r.avg_rating), 2) AS avg_rating
FROM dbo.movies m
JOIN dbo.ratings r
    ON m.movie_id = r.movie_id
GROUP BY m.year
ORDER BY m.year;

-- 2.3 Rating range validation
SELECT
    MIN(avg_rating) AS min_rating,
    MAX(avg_rating) AS max_rating
FROM dbo.ratings;

/*===================================================== 
Insight:
Movie production peaked in 2017 and declined in the following years.
Despite fewer releases, the average movie rating increased steadily from 2017 to 2019, suggesting an overall improvement in perceived movie quality.
===================================================== */

