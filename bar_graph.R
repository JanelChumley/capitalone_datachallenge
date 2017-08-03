require("dplyr")
require("ggplot2")
require("ggthemes")
dataframe<-read.csv("hdma_expanded.csv", stringsAsFactors = FALSE)
filtered<-dataframe%>%select(Loan_Amount_000, State, As_of_Year)%>%filter(!is.na(Loan_Amount_000), !is.na(State), !is.na(As_of_Year))%>%group_by(State, As_of_Year)%>%summarize(count=n())

ggplot(data = filtered, mapping = aes(State,Loan_Amount_000, fill=State)) + coord_cartesian() + facet_wrap(~As_of_Year, nrow=3) + geom_bar(stat="identity") + ylab("Total Loan Amount in Dollars")


                                                                                                