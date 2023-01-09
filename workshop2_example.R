## get data
url <- "https://raw.githubusercontent.com/beyzaozen/MedicalCostPersonal/main/insurance.csv"
data <- readr::read_csv(url)



## get plot
library(dplyr)

data %>% 
  janitor::clean_names() %>%



data %>% ggplot() +
  geom_point(aes(bmi, charges, colour = age, size = smoker)) 
## get plot

make_plot <- function(data){
  ggplot(data) +
    geom_point(
      aes(
        x = bmi, 
        y = charges, 
        colour = age, 
        size = smoker
        )
      )  +
    labs(title = paste0("Unemployement for ", paste(unique(data$place_name), collapse = ", ")))
}

save_plot <- function(save_path, plot){
  ggsave(save_path, plot)
  save_path
}