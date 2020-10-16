package strings

# Capitalize word provided as parameter
capitalize(word) = r {
    first := upper(substring(word, 0, 1))
    rest := substring(word, 1, count(word) - 1)
	r := concat("", [first, rest])
}