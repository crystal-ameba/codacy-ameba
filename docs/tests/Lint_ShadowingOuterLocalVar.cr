# #Patterns: Lint_ShadowingOuterLocalVar

def some_method
  foo = 1

  # #Warn: Lint_ShadowingOuterLocalVar
  3.times do |foo|
  end

  foo
end

def some_method
  foo = 1

  # #Warn: Lint_ShadowingOuterLocalVar
  ->(foo : Int32) {}

  foo
end

foo = 1

# #Warn: Lint_ShadowingOuterLocalVar
3.times do |*foo|
end
