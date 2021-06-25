chain = "kusama"
first_session = 13707
current_session = 13755
difference = current_session - first_session 

x = c(first_session:(first_session + difference))



for(i in 1:length(x)) {
  # read data
  print(paste("currently in session",x[i]))
    url_nominators <-paste("https://storage.googleapis.com/watcher-csv-exporter/", chain , "_nominators_session_", x[i], ".csv", sep=(""))
    destfile_nominators <- paste("/home/jonas/Documents/Projects/kusama-price-analysis/kusama_datasets/", chain , "_nominators_session_", x[i], ".csv", sep=(""))
    download.file(url_nominators, destfile_nominators)
  

    url_validators <- paste("https://storage.googleapis.com/watcher-csv-exporter/", chain , "_validators_session_", x[i], ".csv", sep=(""))
    destfile_validators <- paste("/home/jonas/Documents/Projects/kusama-price-analysis/kusama_datasets/", chain , "_validators_session_", x[i], ".csv", sep=(""))
    download.file(url_validators, destfile_validators)
}