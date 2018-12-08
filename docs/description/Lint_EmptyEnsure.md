A rule that disallows empty ensure statement.

For example, this is considered invalid:

```
def some_method
  do_some_stuff
ensure
end

begin
  do_some_stuff
ensure
end
```

And it should be written as this:


```
def some_method
  do_some_stuff
ensure
  do_something_else
end

begin
  do_some_stuff
ensure
  do_something_else
end
```

YAML configuration example:

```
Lint/EmptyEnsure
  Enabled: true
```
