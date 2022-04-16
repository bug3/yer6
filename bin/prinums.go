//usr/bin/go run $0 $@; exit $?

package main

import (
	"fmt"
	"math"
	"os"
	"strconv"
)

func findPrimes(limit int) {
	nonPrimes := make([]bool, limit)

	for i := 2; i <= int(math.Sqrt(float64(limit))); i++ {
		if nonPrimes[i] == false {
			for j := i * i; j < limit; j += i {
				nonPrimes[j] = true
			}
		}
	}

	printNumbers(nonPrimes)
}

func printNumbers(nonPrimes []bool) {
	for i := 2; i < len(nonPrimes); i++ {
		if nonPrimes[i] == false {
			fmt.Printf("%v ", i)
		}
	}
}

func main() {
	length := len(os.Args)

	if length == 1 {
		length = 333
	} else if length == 2 {
		args1, err := strconv.Atoi(os.Args[1])
		if err != nil {
			fmt.Println(err)
			os.Exit(22)
		}

		length = args1
	} else {
		fmt.Println("Error: Wrong number of args")
		os.Exit(1)
	}

	findPrimes(length)
}
