A rule that disallows usage of large numbers without underscore.
These do not affect the value of the number, but can help read
large numbers more easily.

For example, these are considered invalid:

```
10000
141592654
5.12345
```

And has to be rewritten as the following:

```
10_000
141_592_654
5.123_45
```

YAML configuration example:

```
Style/LargeNumbers:
  Enabled: true
  IntMinDigits: 5 # i.e. integers higher than 9999
```
