WITH raw_reviews AS (
    SELECT *
    FROM {{ source('airbnb', 'reviews') }}
)
SELECT 
    LISTING_ID, 
    DATE AS review_date, 
    REVIEWER_NAME, 
    COMMENTS AS REVIEW_TEXT, 
    SENTIMENT AS REVIEW_SENTIMENT
FROM raw_reviews