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
#> # A tibble: 1 x 2
#>   celcius fahrenheit
#>     <dbl>      <dbl>
#> 1      19       66.2

#' Created on 2018-07-05 by the [reprex package](http://reprex.tidyverse.org) (v0.2.0).
