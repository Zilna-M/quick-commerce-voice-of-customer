# Quick-Commerce Voice of Customer

Analysing 4,620 customer reviews of Blinkit, Zepto, and JioMart to
find the top customer complaints and turn them into business
requirements, using SQL, Excel, and Power BI.

## Business problem
About 7 in 10 reviews give 1 star, but a rating does not show why.
This project finds which problems come up most often, so a product
team can decide what to fix first.

## Status
| Stage | Status |
|---|---|
| Business requirements (BRD) | Done, v1.0 (Section 9 is provisional) |
| Data loading and cleaning | Not started |
| SQL analysis | Not started |
| Dashboard | Not started |

## Documents
- [Business Requirements Document (PDF)](docs/BRD_v1.0.pdf)

## Data source
- Dataset: [E-Commerce Blinkit vs Zepto vs JioMart Reviews](https://www.kaggle.com/datasets/mannacharya/blinkit-vs-zepto-vs-instamart-reviews) on Kaggle
- Author: Mann Acharya
- License: MIT (as stated on the Kaggle page)
- The data file is not included in this repository. Download it from the link above.
- The author does not state how the reviews were collected.

## Related work
This dataset has been analysed before using sentiment classification and topic modelling:
[Khan and Abusaqer, "Evaluating Quick-Commerce Platforms: A Sentiment and Topic Modeling Analysis of User Reviews", MICS 2025](https://msaqer.github.io/pdfs/Quick_Commerce_Sentiment_Topic_Modeling_MICS2025.pdf).
This project differs by turning complaint themes into business requirements, user stories, and acceptance criteria, and by checking the theme labels by hand.

## Tools
PostgreSQL, Excel, Power BI
