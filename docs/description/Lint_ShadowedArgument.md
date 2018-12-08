A rule that disallows shadowed arguments.

For example, this is considered invalid:

```
do_something do |foo|
  foo = 1 # shadows block argument
  foo
end

def do_something(foo)
  foo = 1 # shadows method argument
  foo
end
```

and it should be written as follows:

```
do_something do |foo|
  foo = foo + 42
  foo
end

def do_something(foo)
  foo = foo + 42
  foo
end
```

YAML configuration example:

```
Lint/ShadowedArgument:
  Enabled: true
```
