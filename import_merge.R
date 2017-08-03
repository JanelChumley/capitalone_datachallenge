require("dplyr")
require("ggplot2")
require("ggthemes")
hdma_init<-function(file1, file2){
  merged<-merge(file1, file2)
  return(merged)
}
institutions_file <-read.csv("2012_to_2014_institutions_data_campus.csv", stringsAsFactors = FALSE, header = TRUE)

expanded_csv<-hdma_init(institutions_file, loan_file)
write.csv(expanded_csv, file="hdma_expanded.csv")
