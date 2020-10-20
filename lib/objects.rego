package objects

# Return all (top-level) keys in object o
keys(o) = r {
	r := [k | o[k]]
}

# Return all (top-level) values in object o
values(o) = r {
	r := [v | v := o[_]]
}

# Return a new object with the provided key/value added overwriting if exists
put(o, k, v) = r {
	r := object.union(o, {k: v})
}

# Return a new object with the provided key/value added if
# not present already, or else returns the object unchanged
put_if_absent(o, k, v) = r {
	not o[k]
	r := object.union(o, {k: v})
} else = o {
	true
}
