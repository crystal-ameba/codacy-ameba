A rule that reports unused arguments.
For example, this is considered invalid:

```
def method(a, b, c)
  a + b
end
```
and should be written as:

```
def method(a, b)
  a + b
end
```

YAML configuration example:

```
Lint/UnusedArgument:
  Enabled: true
  IgnoreDefs: true
  IgnoreBlocks: false
  IgnoreProcs: false
```
