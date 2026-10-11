WITH even_pages AS (
    SELECT content_id, title 
    FROM content_items 
    WHERE content_id % 2 = 0
),
odd_pages AS (
    SELECT content_id, title 
    FROM content_items 
    WHERE content_id % 2 = 1
)
SELECT 
    l.content_id AS left_id,
    l.title AS left_title,
    r.title AS right_title
FROM even_pages l
FULL OUTER JOIN odd_pages r 
    ON l.content_id = r.content_id - 1
ORDER BY COALESCE(l.content_id, r.content_id - 1);
