package main

import "C"

import "farenheit"

//export Farenheit
func Farenheit(x float64) float64 {
  return farenheit.Farenheit(x) ;
}

func main() {}
