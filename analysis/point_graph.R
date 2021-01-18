# Point graph for each category -------------------------------------

# 1 Importing the data

data <- read.csv("data/main_data.csv")

# 2 Point graph

point_graph <- ggplot(data = data, aes(x = as.factor(diet), y = weight)) +
  geom_point() + 
  stat_summary(fun = median, geom = "crossbar", width = 0.2, col = "blue") +
  xlab("Diet") +
  ylab("Weight (g)") 

# 3 Save plot

ggsave(point_graph, filename = "graphs/pointgraph.jpeg")