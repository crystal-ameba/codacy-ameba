A rule that disallows the use of `while true` instead of using the idiomatic `loop`

For example, this is considered invalid:

```
while true
  do_something
  break if some_condition
end
```

And should be replaced by the following:

```
loop do
  do_something
  break if some_condition
end
```

YAML configuration example:

```
Style/WhileTrue:
  Enabled: true
```
