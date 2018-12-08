A rule that disallows negated conditions in unless.

For example, this is considered invalid:

```
unless !s.empty?
  :ok
end
```

And should be rewritten to the following:

```
if s.emtpy?
  :ok
end
```

It is pretty difficult to wrap your head around a block of code
that is executed if a negated condition is NOT met.

YAML configuration example:

```
Style/NegatedConditionsInUnless:
  Enabled: true
```
