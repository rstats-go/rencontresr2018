package main

import "C"

import "fahrenheit"

//export Fahrenheit
func Fahrenheit(x float64) float64 {
  return fahrenheit.Fahrenheit(x) ;
}

func main() {}
