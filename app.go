package main

import "fmt"

func main() {
	fmt.Println("test")

	// go vet ./...
	str := "hello world!"
	//fmt.Printf("%d\n", str)
	//fmt.Printf("%s\n", &str)
	fmt.Printf("%s\n", str)
}