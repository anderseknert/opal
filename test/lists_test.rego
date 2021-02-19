package lists_test

import data.lists

test_append {
	lists.append([1, 2, 3], 4) == [1, 2, 3, 4]
	lists.append(["one", "more"], "test") == ["one", "more", "test"]
}

test_insert {
	lists.insert(["b", "c"], "a", 0) == ["a", "b", "c"]
	lists.insert(["a", "c"], "b", 1) == ["a", "b", "c"]
	lists.insert(["a", "b"], "c", 2) == ["a", "b", "c"]
}

test_index {
	lists.index(["a", "b", "c", "a"], "a") == 0
	lists.index(["a", "b", "c", "a"], "b") == 1
	lists.index(["a", "b", "c", "a"], "c") == 2
	lists.index(["a", "b", "c", "a"], "d") == -1
}

test_index_last {
	lists.index_last(["a", "b", "c", "a"], "a") == 3
	lists.index_last(["a", "b", "b", "d"], "b") == 2
	lists.index_last(["a", "b", "c", "a"], "c") == 2
	lists.index_last(["a", "b", "c", "a"], "d") == -1
}

test_reverse {
	lists.reverse(["a", "b", "c"]) == ["c", "b", "a"]
	lists.reverse(["reverse", "in", "life"]) == ["life", "in", "reverse"]
	lists.reverse([1, 2, 2, 1]) == [1, 2, 2, 1]
}

test_count_value {
	lists.count_value([1, 2, 3], 1) == 1
	lists.count_value(["a", "a", 1, "b", "a"], "a") == 3
}

test_zip {
	lists.zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
}