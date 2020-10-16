package strings_test

import data.strings

test_capitalize {
    strings.capitalize("anders") == "Anders"
    # https://github.com/open-policy-agent/opa/issues/2799
    #strings.capitalize("åke") == "Åke"
}