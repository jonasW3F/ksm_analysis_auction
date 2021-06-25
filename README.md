# Kusama Price Analysis

This R-Markdown script builds an analysis of the Kusama Price situation around the announcement of the auctions and uses several data sources (price data, session data and crowdloan contribution data). The script can easily be modified to investigate other time periods (whereas interpretations of the data need to be changed).

In order to get the data, there are a few tools available:

* The price data should be downloaded into the price_data folder from coingecko. The script "market_data_merger.R" can be used to scrape the prices in a specific time period and merge them into a single database. It creates a "merged.csv" which should be put into "price_data/".
* The crowdloan contribution data can be scraped using https://github.com/w3f/crowdloan_contribution_scraper and should be put as "output.csv" in "/crowdloan_contributions"
* The session data can be downloaded via the "download-script.R" and should be placed into "/kusama_datasets".
* For one analysis (ganger-causality between ksm price and unstaking behavior) it is crucial that the number of session files is 24 * the days of price data. This is because Kusama has 24 sessions a day and in the analysis it collapses those into one day. When selecting the sessions from the online bucket, a day starts at 00:24 a.m. and goes until 23:22 p.m.

If you need further help, contact me under jonas@web3.foundation