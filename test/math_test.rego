package math_test

import data.math

test_ceil {
	math.ceil(0) == 0
	math.ceil(0.0000001) == 1
	math.ceil(0.5) == 1
	math.ceil(0.99999999) == 1
	math.ceil(-0.00000001) == 0
	math.ceil(-0.99999999) == 0
}

# Note: OPA considers 1 == 0.99999999999999999999
# https://play.openpolicyagent.org/p/70Iqjgc24W
# This seems like a bug but we'll ignore it for now
test_floor {
	math.floor(0) == 0
	math.floor(0.0000001) == 0
	math.floor(0.5) == 0
	math.floor(0.51) == 0
	math.floor(0.49) == 0
	math.floor(-0.00000001) == -1
	math.floor(-0.99999999) == -1

	# One more 9 and this fails
	math.floor(0.9999999999999999999) == 0
}
