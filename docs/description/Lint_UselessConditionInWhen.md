A rule that disallows useless conditions in when clause
where it is guaranteed to always return the same result.

For example, this is considered invalid:

```
case
when utc?
  io << " UTC"
when local?
  Format.new(" %:z").format(self, io) if local?
end
```

And has to be written as the following:

```
case
when utc?
  io << " UTC"
when local?
  Format.new(" %:z").format(self, io)
end
```

YAML configuration example:

```
Lint/UselessConditionInWhen:
  Enabled: true
```
