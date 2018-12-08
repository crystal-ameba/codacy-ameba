A rule that enforces variable names to be in underscored case.

For example, these variable names are considered valid:

```
class Greeting
  @@default_greeting = "Hello world"

  def initialize(@custom_greeting = nil)
  end

  def print_greeting
    greeting = @custom_greeting || @@default_greeting
    puts greeting
  end
end
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
