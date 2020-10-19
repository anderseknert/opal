package lists_test

import data.lists

test_reverse {
	lists.reverse(["a", "b", "c"]) == ["c", "b", "a"]
	lists.reverse(["reverse", "in", "life"]) == ["life", "in", "reverse"]
	lists.reverse([1, 2, 2, 1]) == [1, 2, 2, 1]
}

test_count {
	lists.count_value([1, 2, 3], 1) == 1
	lists.count_value(["a", "a", 1, "b", "a"], "a") == 3
}
