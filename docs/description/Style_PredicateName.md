A rule that disallows tautological predicate names, meaning those that
start with the prefix `has_` or the prefix `is_`. Ignores if the alternative isn't valid Crystal code (e.g. `is_404?`).

Favour these:

```
def valid?(x)
end

def picture?(x)
end
```

Over these:

```
def is_valid?(x)
end

def has_picture?(x)
end
```

YAML configuration example:

```
Style/PredicateName:
  Enabled: true
```
