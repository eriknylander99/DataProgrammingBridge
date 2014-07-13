#Create a alias for the file name making it easy to change the name
thefile="~/data/pizza-store-data.csv"
#Read the CSV file into a dataframe
pizza<-read.table(file=thefile, header=TRUE, sep=",",stringsAsFactors=FALSE)
summary(pizza)
#The csv file contanis 4 coulumns, date which is a character list containing sequential
#days starting on Jan. 1, 2013, store which is a character list with the name of the store,
#pizzas which is an integer indicating the number of pizza's ordered,
#and customers which is an integer that gives the number of pizzas ordered.