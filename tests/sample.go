package main

import (
	"fmt"
)

const (
	MaxItems = 16
	Ratio    = 3.14159
	Label    = "Tab\t \"quoted\" und %d"
	Letter   = 'x'
)

type Shape interface {
	Area() float64
}

type Circle struct {
	R float64 `json:"r"`
}

func (c Circle) Area() float64 { return Ratio * c.R * c.R }

func Sum[T int | float64](xs ...T) (total T) {
	for _, x := range xs {
		total += x
	}
	return
}

func main() {
	ch := make(chan int, 1)
	defer close(ch)
	go func() { ch <- Sum(1, 2, 3) }()
	var s Shape = Circle{2}
	if v, ok := s.(Circle); ok {
		fmt.Printf(Label+"\n", int(v.Area()))
	}
}
