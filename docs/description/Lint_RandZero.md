A rule that disallows `rand(0)` and `rand(1)` calls.
Such calls always return `0`.

For example:

```
rand(1)
```

Should be written as:

```
rand
# or
rand(2)
```

YAML configuration example:

```
Lint/RandZero:
  Enabled: true
```
