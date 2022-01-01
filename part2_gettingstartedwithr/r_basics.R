# Saving Variables
c <- 50
30 -> b
a = 100

# Printing Variables
print(c)

# Some sample functions
c_sq = sqrt(c)
c_abs = abs(-c)
rounded = round(3.14165, 2)

# Vectors
sales.by.month <- c(0, 100, 200, 50, 0, 0, 0, 0)
sales.by.month[1] # vectors are 1-indexed in R
sales.by.month[5] <- 25

length(x = sales.by.month)

# Vector Operations
sales.by.month * 7 # multiplies each element by 7
sales.by.month / 7 # divides each element by 7

# Indexing Vectors
sales.by.month[c(2,3,4)] #extract 2nd, 3rd, and 4th element
sales.by.month[c(3,2,4)] #order matters
sales.by.month[2:8] #shorthand for 2nd through 8th elements

# Simple Working with Text
nchar(x = "greeting") # tells me how many chars are in the string


# True or False
2 + 2 == 4
sqrt(25) == 5
100 < 100
2 + 2 != 5

FALSE
!FALSE # True
is.the.Party.correct <- 2 + 2 == 5 #False

x <- c(TRUE, TRUE, FALSE)
sales.by.month > 0 # performs logical on each element of vector


# Tell me which months I sold books
months <- c("January", "Februrary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")
sales.by.month <- c(0, 100, 200, 35, 50, 0, 0, 0, 10, 0, 0, 0)
months[sales.by.month > 0]

# When was stock low?
stock.levels = c("high", "high", "low", "out", "out",
                 "high", "high", "high", "high", "high",
                 "high", "high")
months[stock.levels == "out"]
months[stock.levels == "low" | stock.levels == "out"]

# Loading a package
library(httr)
library(psych)

# Loading Data
load(file = "/Users/dan/RBook/data/booksales.Rdata") #absolute path
load(file = "../data/booksales./Rdata") #relative file path
setwd("../data") #  set working directory

# Data from CSV
books <- read.csv(file = "booksales.csv")

# Saving Data
save.image( file = "myfile.Rdata")

