
# t test on main data assuming equal variances ---------------------------

# 1 Import data

data <- read.csv("data/main_data.csv")

# 2 Perform a t test between the two treatments

t_test <- t.test(
  weight ~ diet,
  data = data,
  alternative = "two.sided",
  mu = 0,
  var.equal = TRUE
  ) 

# 3 Save de default output for t.test function

capture.output(t_test, file = "data/t_test_output2.txt")
