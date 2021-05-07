package main

import (
	"fmt"
	"os"
	"runtime"
)

func main() {
	fmt.Printf(
		"Go env: arch(%s) cpus(%d)\n",
		runtime.GOARCH,
		runtime.NumCPU(),
		)
	os.Exit(0)
}