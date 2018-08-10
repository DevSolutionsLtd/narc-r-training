# Create a simple matrix, mat, for the lecture

# Use of matrix()
# A matrix of number 1 - 12, with 3 rows and 4 columns. The numbers are to run 
# the columns, and not by the rows.
mat <- matrix(1:12, nrow = 3, ncol = 4, byrow = FALSE)
mat

# Use of cbind()
# Add a column to matrix, mat, using the nos 8 - 6 (i.e. backwards)
# First make a vector of the right length
colvec <- 8:6
colvec
# Then 'bind' them together
mat <- cbind(mat, colvec)
mat

# Use of rbind()
# Add a row to the bottom of matrix, mat using nos 77 - 81
# Make a vector of the right length
rowvec <- 77:81
rowvec
# Now join this vector to update matrix, mat
mat <- rbind(mat, rowvec)
mat

# remove dimension names (names were added because of vector we created)
# and we don't want them for this exercise. Note that we only created 
# vectors first for easy understanding of R beginners.
dimnames(mat) <- NULL
mat				# matrix is now ready for our examples

# NB: Actually, all of this could be done in fewer lines of codes, but  
# it's good to understand the logic this way!!!