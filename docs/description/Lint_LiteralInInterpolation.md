A rule that disallows useless string interpolations
that contain a literal value instead of a variable or function.

For example:

```
"Hello, #{:Ary}"
"There are #{4} cats"
```

YAML configuration example:

```
Lint/LiteralInInterpolation
  Enabled: true
```
