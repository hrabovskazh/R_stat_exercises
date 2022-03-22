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

#print out mode
print(round(getmode(X), digits = 1))
