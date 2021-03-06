package strings

# Common constants
digits := "0123456789"

hex_digits := "0123456789abcdefABCDEF"

ascii_lowercase := "abcdefghijklmnopqrstuvwxyz"

ascii_uppercase := "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

ascii_letters := concat("", [ascii_lowercase, ascii_uppercase])

ascii_alphanumeric := concat("", [digits, ascii_letters])

# Capitalize word provided as parameter
capitalize(word) = sprintf("%v%v", [
	upper(substring(word, 0, 1)),
	substring(word, 1, count(word) - 1),
])

# Repeated string s x number of times
repeat(str, x) = concat("", [str | numbers.range(0, x - 1)[_]])

# Returns a list of lines from the provided string
lines(str) = regex.split(`\n|\r\n`, str)

# Returns the character from string s at position pos
char_at(s, pos) = substring(s, pos, 1)

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

# True if string is empty or contains only whitespace characters
is_blank(s) = regex.match(`^$|^\s+$`, s)

# String starts with any item in list
startswith_any(s, list) = startswith(s, list[_])

# String ends with any item in list
endswith_any(s, list) = endswith(s, list[_])
