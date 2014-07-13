#Data from the 2013 end of course mathematics tests for the state of Virginia:
#http://www.doe.virginia.gov/statistics_reports/research_data/data_files/test_data/2012-13/2012-13_math_eoc.csv
testdata<-"http://www.doe.virginia.gov/statistics_reports/research_data/data_files/test_data/2012-13/2012-13_math_eoc.csv"
#Reading the data into a dataframe: Caution 524,976 observations.
mathtestdata<-read.csv(testdata,header=TRUE,stringsAsFactors=FALSE)
summary(mathtestdata)

#After finiding this great data set I realized that I was not pulling the
#data from a table so I grabbed another small data set to demonstrate
#the functinality.
require(XML)
#NFL Rushing Champions from 1932-2013
theURL <- "http://en.wikipedia.org/wiki/NFL_rushing_champions"
rushlead <- readHTMLTable(theURL,which=2,headers=TRUE,stringsAsFactors=FALSE)
