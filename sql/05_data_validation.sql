/* =====================================================
   QUESTION 5: SUMMARY INSIGHTS
   ===================================================== */

-- 5.1 Overall average rating
SELECT
    ROUND(AVG(avg_rating), 2) AS overall_avg_rating
FROM dbo.ratings;

-- 5.2 Total audience engagement
SELECT
    SUM(total_votes) AS total_votes_all_movies
FROM dbo.ratings;

-- 5.3 Movies with multiple genres
SELECT
    COUNT(*) AS movies_with_multiple_genres
FROM (
    SELECT movie_id
    FROM dbo.genres
    GROUP BY movie_id
    HAVING COUNT(DISTINCT genre) > 1
) t;

/*===================================================== 
Insight:
Drama emerges as the most successful genre, combining both high average ratings and strong audience engagement.
The analysis confirms that genre-based segmentation provides valuable insights for production strategy and marketing focus.
===================================================== */