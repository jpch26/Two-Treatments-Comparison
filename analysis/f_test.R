
# F test for treatments equal variance ---------------------------------------

# Import data 

data <- read.csv("data/main_data.csv")

# F test

f_test <- var.test(weight ~ diet, data = data)

# Save f_test output

capture.output(f_test, file = "data/f_test_output.txt")
