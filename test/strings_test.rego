package strings_test

import data.strings

test_capitalize {
	strings.capitalize("anders") == "Anders"
}

# https://github.com/open-policy-agent/opa/issues/2799
#strings.capitalize("åke") == "Åke"

test_repeat {
	strings.repeat("a", 3) == "aaa"
	strings.repeat("motörhead", 2) == "motörheadmotörhead"
}

test_lines {
	strings.lines("the\nrego\npolicy\nlanguage") == ["the", "rego", "policy", "language"]
	strings.lines("the\r\nrego\r\npolicy\r\nlanguage") == ["the", "rego", "policy", "language"]
	strings.lines("the\nrego\r\npolicy\nlanguage") == ["the", "rego", "policy", "language"]
	strings.lines("the\nrego\n\rpolicy\nlanguage") == ["the", "rego", "\rpolicy", "language"]
}

test_char_at {
	strings.char_at("abc", 0) == "a"
	strings.char_at("abc", 1) == "b"
	strings.char_at("abc", 2) == "c"
}

test_pad_left {
	p1 := strings.pad_left("testing", 20, " ")
	p1 == "             testing"
	count(p1) == 20

	p2 := strings.pad_left("testing", 4, " ")
	p2 == "testing"
	count(p2) == 7
}

test_pad_right {
	p1 := strings.pad_right("testing", 20, " ")
	p1 == "testing             "
	count(p1) == 20

	p2 := strings.pad_right("testing", 4, " ")
	p2 == "testing"
	count(p2) == 7
}

test_is_blank {
	strings.is_blank("")
	strings.is_blank(" ")
	strings.is_blank("\t")
	strings.is_blank("\r")
	strings.is_blank("\r\f")
	strings.is_blank("\n")
	strings.is_blank(`	`)
	not strings.is_blank("a")
	not strings.is_blank("\na\n")
}
