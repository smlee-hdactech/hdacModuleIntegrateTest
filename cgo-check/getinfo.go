package main

// #cgo CFLAGS: -I../rpccall
// #cgo LDFLAGS: -L../debug-build/rpccall -lrpccall
// #include "cif_rpccall.h"
import "C"

func main() {
	C.getinfo()
}
