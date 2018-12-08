A rule that disallows the usage of the same name as outer local variables
for block or proc arguments.

For example, this is considered incorrect:

```
def some_method
  foo = 1

  3.times do |foo| # shadowing outer `foo`
  end
end
```

and should be written as:

```
def some_method
  foo = 1

  3.times do |bar|
  end
end
```

YAML configuration example:

```
Lint/ShadowingOuterLocalVar:
  Enabled: true
```
