library(dplyr)
# Set date of earliest day we want to use price / volume data
earliest_date = as.Date("2021-05-12")

# Import datasets
atom <- read.csv("~/Documents/Projects/kusama-price-analysis/price_data/atom-usd-max.csv")
ada <- read.csv("~/Documents/Projects/kusama-price-analysis/price_data/ada-usd-max.csv")
dot <- read.csv("~/Documents/Projects/kusama-price-analysis/price_data/dot-usd-max.csv")
avax <- read.csv("~/Documents/Projects/kusama-price-analysis/price_data/AVAX-usd-max.csv")
ksm <- read.csv("~/Documents/Projects/kusama-price-analysis/price_data/ksm-usd-max.csv")
btc <- read.csv("~/Documents/Projects/kusama-price-analysis/price_data/btc-usd-max.csv")
sol <- read.csv("~/Documents/Projects/kusama-price-analysis/price_data/sol-usd-max.csv")

# Format snapped_at variable as Date() variable
atom$snapped_at = as.Date(atom$snapped_at)
ada$snapped_at = as.Date(ada$snapped_at)
dot$snapped_at = as.Date(dot$snapped_at)
avax$snapped_at = as.Date(avax$snapped_at)
ksm$snapped_at = as.Date(ksm$snapped_at)
btc$snapped_at = as.Date(btc$snapped_at)
sol$snapped_at = as.Date(sol$snapped_at)

atom = rename(atom, atom_price = price, atom_cap = market_cap, atom_volume = total_volume)
ada = rename(ada, ada_price = price, ada_cap = market_cap, ada_volume = total_volume)
dot = rename(dot, dot_price = price, dot_cap = market_cap, dot_volume = total_volume)
avax = rename(avax, avax_price = price, avax_cap = market_cap, avax_volume = total_volume)
ksm = rename(ksm, ksm_price = price, ksm_cap = market_cap, ksm_volume = total_volume)
btc = rename(btc, btc_price = price, btc_cap = market_cap, btc_volume = total_volume)
sol = rename(sol, sol_price = price, sol_cap = market_cap, sol_volume = total_volume)

atom <- subset(atom, snapped_at > earliest_date)
ada <- subset(ada, snapped_at > earliest_date)
dot <- subset(dot, snapped_at > earliest_date)
avax <- subset(avax, snapped_at > earliest_date)
ksm <- subset(ksm, snapped_at > earliest_date)
btc <- subset(btc, snapped_at > earliest_date)
sol <- subset(sol, snapped_at > earliest_date)

df_merged = cbind(atom,ada,dot,avax,ksm,btc,sol)
write.csv(df_merged,"~/Documents/Projects/kusama-price-analysis/price_data/merged.csv", row.names = FALSE)
