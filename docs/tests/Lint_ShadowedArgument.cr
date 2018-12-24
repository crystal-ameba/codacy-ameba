# #Patterns: Lint_ShadowedArgument

def foo(bar)
  # #Warn: Lint_ShadowedArgument
  bar = 1
end

def foo(foo)
  bar = 2
  # #Warn: Lint_ShadowedArgument
  foo = 43
  foo + bar
end

3.times do |i|
  # #Warn: Lint_ShadowedArgument
  i = 2
end

->(x : Int32) {
  # #Warn: Lint_ShadowedArgument
  x = 20
  x
}
