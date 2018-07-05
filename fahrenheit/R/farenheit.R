#' @useDynLib fahrenheit
#' @export
fahrenheit <- function(celcius) {
  .Call("_fahrenheit", celcius, PACKAGE = "fahrenheit")
}
