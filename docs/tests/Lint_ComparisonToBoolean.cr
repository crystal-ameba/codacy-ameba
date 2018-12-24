# #Patterns: Lint_ComparisonToBoolean

foo = 1
# #Warn: Lint_ComparisonToBoolean
if foo == true
  puts "foo is true!"
end

if foo
  puts "foo is truthy"
end
