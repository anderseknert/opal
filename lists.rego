package lists

# Return a new list with item x appended to the end of list l
append(l, x) = r {
	r := array.concat(l, [x])
}

# Returns a new list with item x inserted at position p of list l
insert(l, x, p) = r {
	first := array.slice(l, 0, p)
	last := array.slice(l, p, count(l))
	r := array.concat(array.concat(first, [x]), last)
}

# Return the index of the first occurence of item x, or -1 if not found
index(l, x) = r {
	t := [i | v := l[i]; v == x]
	count(t) > 0
	r := t[0]
} else = -1 {
	true
}

# Return the index of the last occurence of item x, or -1 if not found
index_last(l, x) = r {
	t := [i | v := l[i]; v == x]
	count(t) > 0
	r := t[minus(count(t), 1)]
} else = -1 {
	true
}

# Reverse provided list
reverse(l) = r {
	r := [x |
		i := numbers.range(count(l) - 1, 0)[_]
		x := l[i]
	]
}

# Count the number of occurences of provided value v in list l
count_value(l, v) = r {
	r := count([x | x := l[_]; x == v])
}
