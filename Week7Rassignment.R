#Loading the packackage to connect to SQLite
require(RSQLite)
#Connecting to simplecharter database.
drv <- dbDriver("SQLite")
con <- dbConnect(drv,"D:/Erik/Documents/data/simplecharter.sqlite")
#Loading in the allcharters table into a dataframe
allcharters = dbGetQuery(con, "Select * FROM allcharters")

#Loading the MASS package to get to the Boston dataset
require(MASS)
#Create the database boston.sqlite
bostondb <- dbConnect(drv, dbname="boston.sqlite")
#Write the data from the Boston dataframe to the database
dbWriteTable(conn=bostondb, name="Boston",value=Boston, row.names=FALSE)
