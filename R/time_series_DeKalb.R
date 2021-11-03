library(ggplot2)
library(tidyr)
data <- read.csv("C:/Users/zli387/Downloads/HW3_git/data/info550_project_data.csv")
data$year <- as.Date(paste(data$year,1,1,sep = "-"))
data <- data %>%
  pivot_longer(
    cols = c("in_poverty", "income_less_35000", "no_car"),
    names_to = "indicator",
    values_to = "percent"
  )

png("C:/Users/zli387/Downloads/HW3_git/figs/time_series_plot_DeKalb.png")
par(family = "sans")
ggplot(data ,aes(x = year, y = percent)) +
  geom_line(aes(color = indicator), size = 1) +
  ylab("Socioeconomic status indicators (%)") +
  theme_classic()
dev.off()