package main

import (
	"fmt"
	"net/http"
)

func main(){
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintln(w, "Hello Go!")
	})

	fmt.Println("Listening on :3000")

	err := http.ListenAndServe(":3000", nil)
	if err != nil {
		panic(err)
	}
}
