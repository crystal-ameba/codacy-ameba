A rule that disallows empty expressions.

This is considered invalid:

```
foo = ()

if ()
  bar
end
```

And this is valid:

```
foo = (some_expression)

if (some_expression)
  bar
end
```

YAML configuration example:

```
Lint/EmptyExpression:
  Enabled: true
```
