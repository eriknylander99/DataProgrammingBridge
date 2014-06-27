#Three ways to assign a value to a variable
x<-42
y=24
assign("z",7)

#Using the sum and is.na functions to count the number
#of missing variables
a<-c(5,NA,3,NA,7,NA,2,NA,1,NA)
sum(is.na(a))

#Demonstration of the difference between the require()
#and library() functions
require(MASS)
detach("package:MASS")
#require tells you what package it is loading along with the
#dependent packages

library(coefplot)
detach("package:coefplot")
#libray loads the package and does tell you if it loads 
#dependent packages

#the biggest difference is when something goes wrong
b<-is.logical(library(bill))
c<-require(bob)
#the library() function throws  an error to the console as does require but
#require also returns a logical value when it fails. In this case b has taken
#the value of false. We could now use this in in a function to
#stop a script if a package that we need is not on the machine
