A rule that enforces variable names to be in underscored case.

For example, these variable names are considered valid:

```
var_name = 1
name = 2
_another_good_name = 3
```

And these are invalid method names:

```
myBadNamedVar = 1
wrong_Name = 2
```

YAML configuration example:

```
Style/VariableNames:
  Enabled: true
```
