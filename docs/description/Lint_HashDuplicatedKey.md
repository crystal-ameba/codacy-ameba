A rule that disallows duplicated keys in hash literals.

This is considered invalid:

```
h = {"foo" => 1, "bar" => 2, "foo" => 3}
```

And it has to written as this instead:

```
h = {"foo" => 1, "bar" => 2}
```

YAML configuration example:

```
Lint/HashDuplicatedKey:
  Enabled: true
```
