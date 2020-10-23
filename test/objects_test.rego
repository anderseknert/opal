package objects_test

import data.objects

test_keys {
	objects.keys({"a": 1, "b": 2, "c": 3}) == ["a", "b", "c"]
	objects.keys({1: 1, 2: 2, 3: 3}) == [1, 2, 3]
	objects.keys({"å": "ä", "ä": "ö"}) == ["ä", "å"]
}

test_values {
	objects.values({"a": 1, "b": 2, "c": 3}) == [1, 2, 3]
	objects.values({1: 1, 2: 2, 3: 3}) == [1, 2, 3]
	objects.values({"å": "ä", "ä": "ö"}) == ["ö", "ä"]
}

test_put {
	objects.put({"a": 1}, "b", 2) == {"a": 1, "b": 2}
	objects.put({"a": 1}, "a", 2) == {"a": 2}
}

test_put_if_absent {
	objects.put_if_absent({"a": 1}, "b", 2) == {"a": 1, "b": 2}
	objects.put_if_absent({"a": 1}, "a", 2) == {"a": 1}
}
