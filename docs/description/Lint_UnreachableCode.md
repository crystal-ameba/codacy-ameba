A rule that reports unreachable code.

For example, this is considered invalid:

```
def method(a)
  return 42
  a + 1
end
```

```
a = 1
loop do
  break
  a += 1
end
```

And has to be written as the following:

```
def method(a)
  return 42 if a == 0
  a + 1
end
```

```
a = 1
loop do
  break a > 3
  a += 1
end
```

YAML configuration example:

```
Lint/UnreachableCode:
  Enabled: true
```
