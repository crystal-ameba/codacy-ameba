A rule that disallows some unwanted symbols in percent array literals.

For example, this is usually written by mistake:

```
%i(:one, :two)
%w("one", "two")
```

And the expected example is:

```
%i(one two)
%w(one two)
```

YAML configuration example:

```
Lint/PercentArrays:
  Enabled: true
  StringArrayUnwantedSymbols: ',"'
  SymbolArrayUnwantedSymbols: ',:'
```
