package lists

# Return a new list with item x appended to the end of list l
append(l, x) = array.concat(l, [x])

# Returns a new list with item x inserted at position p of list l
insert(l, x, p) = array.concat(array.concat(array.slice(l, 0, p), [x]), array.slice(l, p, count(l)))

# Return the index of the first occurence of item x, or -1 if not found
index(l, x) = t[0] {
	t := [i | x == l[i]]
	count(t) > 0
} else = -1 {
	true
}

# Return the index of the last occurence of item x, or -1 if not found
index_last(l, x) = t[minus(count(t), 1)] {
	t := [i | x == l[i]]
	count(t) > 0
} else = -1 {
	true
}

# Reverse provided list
reverse(l) = [l[j] | _ = l[i]; j := (count(l) - 1) - i]

# Count the number of occurences of provided value v in list l
count_value(l, v) = count([1 | v == l[_]])
