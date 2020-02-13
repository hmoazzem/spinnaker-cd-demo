package main

import (
    "fmt"
    "net/http"
)

func main() {
    http.HandleFunc("/", func (w http.ResponseWriter, r *http.Request) {
        fmt.Fprintf(w, `<h1 style="color:blue;">V1</h1>`)
	})
	
    http.ListenAndServe(":80", nil)
}