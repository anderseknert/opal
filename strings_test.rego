package strings_test

import data.strings

test_capitalize {
    strings.capitalize("anders") == "Anders"
    # https://github.com/open-policy-agent/opa/issues/2799
    #strings.capitalize("åke") == "Åke"
}

test_repeat {
    strings.repeat("a", 3) == "aaa"
    strings.repeat("motörhead", 2) == "motörheadmotörhead"
}

test_char_at {
    strings.char_at("abc", 0) == "a"
    strings.char_at("abc", 1) == "b"
    strings.char_at("abc", 2) == "c"
}