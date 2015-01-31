package calc

import "testing"

func Test_Plus(t *testing.T) {
	ret := Plus(1, 2)
	if ret != 3 {
		t.Error("not equle 3 :", ret)
	}
}

func Test_Minus(t *testing.T) {
	ret := Minus(10, 6)
	if ret != 4 {
		t.Error("not equle 4 :", ret)
	}
}

func Test_Multi(t *testing.T) {
	ret := Multi(3, 4)
	if ret != 12 {
		t.Error("not equle 12 :", ret)
	}

}

func Test_Div(t *testing.T) {
	ret := Div(float64(6), float64(12))
	if ret != 0.5 {
		t.Error("not equle 0.5 :", ret)
	}
}
