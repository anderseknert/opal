# Opal - the OPA not quite standard library

Opal is a collection of common functions for OPA/Rego as found in the standard library of many popular programming languages. While OPA itself includes many useful built-ins and constructs for policy authoring, the provided "stdlib" is kept quite minimal. Opal aims to complement that with a batteries included package of functions recognizable from languages such as Python, Go or Java. While the library is ready to be used as it, it is just as much meant as an educational resource answering the occasional "how would I write function X in rego?" that may come up while authoring Rego policies. Copy-pasting highly encouraged!

If you are rather looking for examples, policies and rules for working with systems like Kubernetes, Terraform or AWS, checkout the [Open Policy Agent Library](https://github.com/open-policy-agent/library).

## Using Opal

1. `git clone` the repository and copy the `lib` directory to wherver you keep your Rego policies. Import and use.

or

2. Simply copy and paste the functions you may want to use into your policies and use them directly.

## Functions

### Strings

| Function | Description |
|----------|-------------|
| `strings.capitalize(word)` | Capitalize provided word |
| `strings.repeat(str, x)` | Returns `str` repeated `x` number of times |
| `strings.lines(str)` | Returns a list of all lines in `str` |
| `strings.char_at(str, x)` | Get character from `str` at position `x` |
| `strings.pad_left(str, length, char)` | Pad `str` to the left with `char` up to `length` |
| `strings.pad_right(str, length, char)` | Pad `str` to the right with `char` up to `length` |
| `strings.is_blank(str)` | True if `str` is empty or contains only whitespace characters |
| `strings.startswith_any(str, list)` | True if `str` starts with any item in `list` |
| `strings.endswith_any(str, list)` | True if `str` ends with any item in `list` |

### Lists / Arrays

| Function | Description |
|----------|-------------|
| `lists.append(l, x)` | Returns list `l` with value `x` appended (added last) |
| `lists.insert(l, x, pos)` | Return list `l` with value `x` inserted at position `pos` |
| `lists.index(l, x)` | Provides the position of first occurence of value `x` in list, or -1 if not found |
| `lists.index_last `| Provides the position of last occurence of value `x` in list, or -1 if not found |
| `lists.reverse(l)` | Reverse provided list |
| `lists.count_value(l, v)` | Count the number of occurences of provided value `v` in list `l`|

## Objects

| Function | Description |
|----------|-------------|
| `objects.keys(o)` | Returns a list of (top level) keys in object `o` |
| `objects.values(o)` | Returns a list of (top level) values in object `o` |
| `objects.put(o, k, v)` | Return a new object with the provided key/value added (overwritten if exists) |
| `objects.put_if_absent(o, k, v)` | Return a new object with the provided key/value added (if not exists) |

## Math

| Function | Description |
|----------|-------------|
| `math.ceil(x)` | Returns `x` rounded up to the closest integer |
| `math.floor(x)` | Returns `x` rounded down to the closest integer |

## Contributing

If you have a function you'd like to add, that's great! Just remember to submit a unit test or two along with your PR.
