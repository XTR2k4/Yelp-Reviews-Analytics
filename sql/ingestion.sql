-- Loading all the reviews about various businesses
CREATE OR REPLACE TABLE yelp_reviews (review_text VARIANT)

COPY INTO yelp_reviews
FROM 's3://yelp-reviews-xt/'
CREDENTIALS = (
    AWS_KEY_ID = '*******************'
    AWS_SECRET_KEY = 'your_key'
)
FILE_FORMAT = (TYPE = JSON);


-- Loading data about the various businesses 
CREATE OR REPLACE TABLE yelp_businesses (business_text VARIANT)

COPY INTO yelp_businesses
FROM 's3://yelp-reviews-xt/business'
CREDENTIALS = (
    AWS_KEY_ID = '*******************'
    AWS_SECRET_KEY = 'your_key'
)
FILE_FORMAT = (TYPE = JSON);
