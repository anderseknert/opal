# Opal - the OPA not quite standard library

Opal is a collection of common functions for OPA/Rego as found in the standard library of many popular programming languages. While OPA itself includes many useful built-ins and constructs for policy authoring, the provided "stdlib" is kept quite minimal. Opal aims to complement that with a batteries included package of functions recognizable from languages such as Python, Go or Java. While the library is ready to be used as it, it is just as much meant as an educational resource answering the occasional "how would I write function X in rego?" that may come up while authoring Rego policies.

## Using Opal

1. `git clone` the repository and copy the `lib` directory to wherver you keep your Rego policies. Import and use.
2. Simply copy and paste the functions you may want to use into your policies and use them directly.

## Contributing

If you have a function you'd like to add, that's great! Just remember to submit a unit test or two along with your PR.
