package main

import (
	"golang.org/x/mobile/app"

	_ "golang.org/x/mobile/bind/java"
	_ "github.com/scarviz/gocalc/calc/go_calc"
)

func main() {
	app.Run(app.Callbacks{})
}
