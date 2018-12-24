# #Patterns: Lint_HashDuplicatedKey

# #Warn: Lint_HashDuplicatedKey
{"foo" => 1, "bar" => 2, "foo" => 3}

# #Warn: Lint_HashDuplicatedKey
{"a" => 1, "b" => {"a" => 3, "b" => 4, "a" => 5}}

{"a" => 1, "b" => 2}
