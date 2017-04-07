# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks scored the first 4 games of last season
# Hint: (google "Seahawks scores 2016")
first.four.seahawks <- c(12, 3, 37, 27)

# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
first.four.opponents <- c(10, 9, 18, 17)

# Combine your two vectors into a dataframe
seahawks.scores <- data.frame(first.four.seahawks, first.four.opponents)

# Create a new column "diff" that is the difference in points
seahawks.scores[["diff"]] <- c(abs(first.four.opponents - first.four.seahawks))

# Create a new column "won" which is TRUE if the Seahawks wom
seahawks.scores[["won"]] <- c(first.four.seahawks > first.four.opponents)

# Create a vector of the opponents
opponents <- c("Miami", "LA", "San Fran", "NY Jets")

# Assign your dataframe rownames of their opponents
rownames(seahawks.scores) <- opponents