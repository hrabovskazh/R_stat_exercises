#set size of the array and contents
N <- 11;
X <- c(64630, 11735, 14216, 99233, 14470, 4978, 73429, 38120, 51135, 67060, 55225);

#sort the array to compute median
X <- sort(X);

#print out mean and meadian
print(round(mean(X), digits = 1))
print(round(median(X), digits = 1))

#formula for mode
getmode <- function(v) {
   uniqv <- unique(v)
   uniqv[which.max(tabulate(match(v, uniqv)))]
}

# unique() returns a vector, data frame or array like x but with duplicate elements/rows removed.
# match() returns a vector of the positions of (first) matches of its first argument in its second.
#tabulate() takes the integer-valued vector bin and counts the number of times each integer occurs in it.
#which.max() returns the position of the element with the maximal value in a vector.

#print out mode
print(round(getmode(X), digits = 1))
