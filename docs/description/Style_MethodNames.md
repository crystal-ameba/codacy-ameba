A rule that enforces method names to be in underscored case.

For example, these are considered valid:

```
class Person
  def first_name
  end

  def date_of_birth
  end

  def homepage_url
  end
end
```

And these are invalid method names:

```
class Person
  def firstName
  end

  def date_of_Birth
  end

  def homepageURL
  end
end
```

YAML configuration example:

```
Style/MethodNames:
  Enabled: true
```
