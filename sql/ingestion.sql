CREATE OR REPLACE TABLE yelp_reviews (review_text VARIANT)

COPY INTO yelp_reviews
FROM 's3://yelp-reviews-xt/'
CREDENTIALS = (
    AWS_KEY_ID = '*******************'
    AWS_SECRET_KEY = 'your_key'
)
FILE_FORMAT = (TYPE = JSON);

--creating structured table 
CREATE OR REPLACE TABLE tbl_reviews AS
SELECT review_text:business_id::STRING AS business_id,
    review_text:user_id::STRING AS user_id,
    review_text:date::DATE AS review_date,
    review_text:stars::NUMBER AS review_stars,
    review_text:text::STRING AS review_txt,
    analyze_sentiment(review_txt) AS sentiment
FROM yelp_reviews;


CREATE OR REPLACE TABLE yelp_businesses (business_text VARIANT)
  
--creating structured table for yelp_businesses
CREATE OR REPLACE TABLE tbl_businesses AS
SELECT business_text:business_id::STRING AS business_id,
    business_text:name::STRING AS business_name,
    business_text:city::STRING AS city,
    business_text:state::STRING AS state,
    business_text:review_count::NUMBER AS review_count,
    business_text:stars::NUMBER AS stars,
    business_text:categories::STRING AS categories
FROM yelp_businesses;
