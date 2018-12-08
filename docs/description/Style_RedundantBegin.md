A rule that disallows redundant begin blocks.

Currently it is able to detect:

1. Exception handler block that can be used as a part of the method.

For example, this:

```
def method
  begin
    read_content
  rescue
    close_file
  end
end
```

should be rewritten as:

```
def method
  read_content
rescue
  close_file
end
```

2. begin..end block as a top level block in a method.

For example this is considered invalid:

```
def method
  begin
    a = 1
    b = 2
  end
end
```

and has to be written as the following:

```
def method
  a = 1
  b = 2
end
```

YAML configuration example:

```
Style/RedundantBegin:
  Enabled: true
```
