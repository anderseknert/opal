package strings

# Capitalize word provided as parameter
capitalize(word) = r {
	first := upper(substring(word, 0, 1))
	rest := substring(word, 1, count(word) - 1)
	r := concat("", [first, rest])
}

repeat(s, x) = r {
	r := concat("", [p | numbers.range(0, x - 1)[_]; p := s])
}

lines(s) = r {
	r := split(s, "\n")
}

char_at(str, pos) = r {
	r = substring(str, pos, 1)
}
