
# Summarizing main data ------------------------------------------------------

# 1 Import data

data <- read.csv("data/main_data.csv")

# 2 Summarize using dplyr

sum_table <- data %>% 
  group_by(diet) %>% 
  summarize(
    min    = min(weight),
    max    = max(weight),
    range  = max - min,
    mean   = round(mean(weight), 2), 
    median = round(median(weight), 2),
    sd     = round(sd(weight), 2),
    cv     = round((sd / mean) * 100, 2)
  )

# 3 Save summary

write.csv(sum_table, file = "data/summary_table.csv", row.names = FALSE)
