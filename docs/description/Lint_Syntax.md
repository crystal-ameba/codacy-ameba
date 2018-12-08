A rule that reports invalid Crystal syntax.

For example, this syntax is invalid:

```
def hello
  do_something
rescue Exception => e
end
```

And should be properly written:

```
def hello
  do_something
rescue e : Exception
end
```
