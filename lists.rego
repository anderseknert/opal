package lists

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
