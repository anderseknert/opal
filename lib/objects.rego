package objects

# Return all (top-level) keys in object o
keys(o) = [k | o[k]]

# Return all (top-level) values in object o
values(o) = [v | v := o[_]]

# Return a new object with the provided key/value added overwriting if exists
put(o, k, v) = object.union(o, {k: v})

# Return a new object with the provided key/value added if
# not present already, or else returns the object unchanged
put_if_absent(o, k, v) = object.union(o, {k: v}) {
	not o[k]
} else = o {
	true
}
