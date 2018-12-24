# #Patterns: Lint_LiteralInCondition

# #Warn: Lint_LiteralInCondition
if "string"
  :ok
end

# #Warn: Lint_LiteralInCondition
unless true
  :ok
end

# #Warn: Lint_LiteralInCondition
case [1, 2, 3]
when :array
  :ok
when :not_array
  :also_ok
end

if foo
  :bar
end
