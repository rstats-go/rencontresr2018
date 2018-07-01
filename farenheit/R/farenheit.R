#' @useDynLib farenheit
#' @export
farenheit <- function(celcius) {
  .Call("_farenheit", celcius, PACKAGE = "farenheit")
}
