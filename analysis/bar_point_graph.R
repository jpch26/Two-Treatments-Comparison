# Bar Graph for summary table -------------------------------------------------

# 1 Importing the data

sum_table <- read.csv("data/summary_table.csv")
data <- read.csv("data/main_data.csv")

# 2 Bar graph

barpoint_graph <- ggplot(data = sum_table, aes(x = as.factor(diet), y = mean)) +
  geom_col(
    width = 0.2, 
    color = "black", fill = "royalblue1"
    ) +
  geom_errorbar(
    aes(ymin = mean - sd, ymax = mean + sd), width = 0.05
    ) +
  geom_point(
    data = data, 
    aes(x = as.factor(diet), y = weight), 
    color = "blue4", size = 1.5
    ) +
  xlab("Diet") +
  ylab("Weight (g)") 

# 3 Save plot

ggsave(barpoint_graph, filename = "graphs/barpointgraph.jpeg")
