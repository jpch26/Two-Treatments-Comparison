
# Assuming significant differences  -------------------------------------

set.seed(5) # For reproducibility

# 1 Simulate the data from a normal distribution

t1 <- round(rnorm(6, mean = 23, sd = 1.2), 2) # diet 1
t2 <- round(rnorm(6, mean = 19, sd = 1.1), 2) # diet 2

# 2 Character vector with each diet category

diet <- c(rep(1, length(t1)), rep(2, length(t2)))

# 3 Character vector with random strings for each individual 

code_ind <- stri_rand_strings(
  n = length(t1) + length(t2), 
  length = 3, 
  pattern = "[A-Z0-9]")

# 3 Data frame with all the data (values and categories)

data <- data.frame(code = code_ind, diet, weight = c(t1, t2)) 

# 4 Save the data

write.csv(data, file = "data/main_data.csv", row.names = FALSE)
