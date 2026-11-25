-- Project: Quick-Commerce Voice of Customer
-- Step 1: create the raw table (all text, exactly as in the CSV)
CREATE TABLE reviews_raw (
    rating      TEXT,
    review_date TEXT,
    review      TEXT,
    platform    TEXT
);

-- Import the original reviews.csv into reviews_raw with pgAdmin
-- (Import/Export Data: csv, UTF8, header on, quote and escape ")

-- Step 2: create the clean table
DROP TABLE IF EXISTS reviews_clean;

CREATE TABLE reviews_clean AS
SELECT
    ROW_NUMBER() OVER ()                              AS review_id,
    rating::SMALLINT                                  AS rating,
    TO_DATE(TRIM(review_date), 'FMDD FMMonth YYYY')   AS review_date,
    REGEXP_REPLACE(TRIM(review), '\s+', ' ', 'g')     AS review_text,
    LOWER(TRIM(platform))                             AS platform
FROM reviews_raw;

ALTER TABLE reviews_clean ADD PRIMARY KEY (review_id);

-- Step 3: duplicate check
-- Result: no rows. One review text appears twice, but the rating,
-- date, or platform differ, so both are real reviews and none are removed.
SELECT rating, review_date, platform, COUNT(*) AS copies
FROM reviews_clean
GROUP BY rating, review_date, platform, review_text
HAVING COUNT(*) > 1;
