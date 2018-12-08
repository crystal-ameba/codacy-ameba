A rule that reports unneeded disable directives.
For example, this is considered invalid:

```
# ameba:disable PredicateName
def comment?
  do_something
end
```

as the predicate name is correct and the comment directive does not
have any effect, the snippet should be written as the following:

```
def comment?
  do_something
end
```
