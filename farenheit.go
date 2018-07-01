package main

import "fmt"

func farenheit(celcius float64) float64 {
  return celcius * 1.8 + 32
}

func main() {
  var freezing float64 = farenheit(0.0)
  boiling := farenheit(37.0)
  
  fmt.Printf("Water freezes at %4.2f F\n", freezing)
  fmt.Printf("Water boils at %4.2f F\n", boiling)
}