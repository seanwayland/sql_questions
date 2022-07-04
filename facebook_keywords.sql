SELECT keyword,
       SUM(n_views) AS total_views
FROM
  (SELECT unnest(post_keywords) AS keyword,
          n_views
   FROM
     (SELECT string_to_array(BTRIM(post_keywords, '[]#'), ',') AS post_keywords,
             COALESCE(n_views, 0) AS n_views
      FROM facebook_posts posts
      LEFT OUTER JOIN
        (SELECT post_id,
                COUNT(*) AS n_views
         FROM facebook_post_views
         GROUP BY post_id) post_views ON posts.post_id = post_views.post_id) base1) base2
GROUP BY keyword
ORDER BY total_views DESC


/**
Create a report showing how many views each keyword has. Output the keyword and the total views, and order records with highest view count first.

Tables: facebook_posts, facebook_post_views

keywords is stored as a varchar 
post_id:
int
poster:
int
post_text:
varchar
post_keywords:
varchar
post_date:
datetime

*/
