package objects

# Return all (top-level) keys in object o
keys(o) = r {
	r := [k | o[k]]
}

# Return all (top-level) values in object o
values(o) = r {
	r := [v | v := o[_]]
}
