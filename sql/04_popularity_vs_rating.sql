/* =====================================================
   QUESTION 4: TOP MOVIES & AUDIENCE ENGAGEMENT
   ===================================================== */

-- 4.1 Top 10 movies by total votes
SELECT TOP 10
    m.title,
    r.total_votes,
    r.avg_rating
FROM dbo.movies m
JOIN dbo.ratings r
    ON m.movie_id = r.movie_id
ORDER BY r.total_votes DESC;

-- 4.2 Top rated movies with significant audience
SELECT TOP 10
    m.title,
    r.avg_rating,
    r.total_votes
FROM dbo.movies m
JOIN dbo.ratings r
    ON m.movie_id = r.movie_id
WHERE r.total_votes >= 10000
ORDER BY r.avg_rating DESC;

-- 4.3 Popular but low-rated movies
SELECT TOP 10
    m.title,
    r.avg_rating,
    r.total_votes
FROM dbo.movies m
JOIN dbo.ratings r
    ON m.movie_id = r.movie_id
WHERE r.total_votes >= 100000
  AND r.avg_rating < 6
ORDER BY r.total_votes DESC;

/*===================================================== 
Insight:
Franchise and blockbuster movies dominate audience engagement in terms of total votes.
High audience popularity does not always correspond to high ratings, highlighting differences between mass appeal and perceived quality.
===================================================== */