# Bar Graph for summary table -------------------------------------------------

# 1 Importing the data

sum_table <- read.csv("data/summary_table.csv")

# 2 Bar graph

bar_graph <- ggplot(data = sum_table, aes(x = as.factor(diet), y = mean)) +
  geom_col(width = 0.2, color = "black", fill = "royalblue1") +
  geom_errorbar(aes(ymin = mean - sd, ymax = mean + sd), width = 0.05) +
  xlab("Diet") +
  ylab("Weight (g)")

# 3 Save plot

ggsave(bar_graph, filename = "graphs/bargraph.jpeg")
