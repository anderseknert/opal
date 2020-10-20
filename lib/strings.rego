package strings

# Common constants
digits := "0123456789"

hex_digits := "0123456789abcdefABCDEF"

ascii_lowercase := "abcdefghijklmnopqrstuvwxyz"

ascii_uppercase := "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

ascii_letters := concat("", [ascii_lowercase, ascii_uppercase])

ascii_alphanumeric := concat("", [digits, ascii_letters])

# Capitalize word provided as parameter
capitalize(word) = r {
	first := upper(substring(word, 0, 1))
	rest := substring(word, 1, count(word) - 1)
	r := sprintf("%v%v", [first, rest])
}

# Repeated string s x number of times
repeat(s, x) = r {
	r := concat("", [p | numbers.range(0, x - 1)[_]; p := s])
}

# Returns a list of lines from the provided string
lines(s) = r {
	r := split(s, "\n")
}

# Returns the character from string s at position pos
char_at(s, pos) = r {
	r := substring(s, pos, 1)
}

# Pad provided string to the left with provided char up until length
pad_left(s, length, char) = s {
	count(s) >= length
} else = r {
	r := sprintf("%v%v", [repeat(char, length - count(s)), s])
}

# Pad provided string to the right with provided char up until length
pad_right(s, length, char) = s {
	count(s) >= length
} else = r {
	r := sprintf("%v%v", [s, repeat(char, length - count(s))])
}
