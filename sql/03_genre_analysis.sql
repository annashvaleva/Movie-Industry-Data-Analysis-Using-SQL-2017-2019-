/* =====================================================
   QUESTION 3: GENRE ANALYSIS
   ===================================================== */

-- 3.1 Average rating by genre
SELECT
    g.genre,
    ROUND(AVG(r.avg_rating), 2) AS avg_genre_rating
FROM dbo.genres g
JOIN dbo.ratings r
    ON g.movie_id = r.movie_id
GROUP BY g.genre
ORDER BY avg_genre_rating DESC;

-- 3.2 Number of movies per genre
SELECT
    genre,
    COUNT(DISTINCT movie_id) AS number_of_movies
FROM dbo.genres
GROUP BY genre
ORDER BY number_of_movies DESC;

-- 3.3 Genre performance: rating vs audience size
SELECT
    g.genre,
    ROUND(AVG(r.avg_rating), 2) AS avg_rating,
    SUM(r.total_votes) AS total_votes
FROM dbo.genres g
JOIN dbo.ratings r
    ON g.movie_id = r.movie_id
GROUP BY g.genre
ORDER BY total_votes DESC;

/*===================================================== 
Insight:
Drama and Romance genres achieved the highest average ratings, indicating strong critical reception.
Action and Adventure genres attracted significantly larger audiences but received comparatively lower average ratings.
===================================================== */