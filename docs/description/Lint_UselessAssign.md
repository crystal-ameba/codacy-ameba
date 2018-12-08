A rule that disallows useless assignments.

For example, this is considered invalid:

```
def method
  var = 1
  do_something
end
```

And has to be written as the following:

```
def method
  var = 1
  do_something(var)
end
```

YAML configuration example:

```
Lint/UselessAssign:
  Enabled: true
```
