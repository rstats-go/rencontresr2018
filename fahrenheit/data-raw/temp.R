library(rvest)
library(glue)
library(fahrenheit)
library(tibble)
library(dplyr)

temperature <- function(where = "Rennes"){
  glue("https://wttr.in/{where}") %>%
    read_html() %>%
    html_node("span:nth-child(3)") %>%
    html_text() %>%
    as.numeric()
}

temperature("Rennes") %>%
  tibble(celcius = .) %>%
  mutate(fahrenheit = fahrenheit(celcius))
