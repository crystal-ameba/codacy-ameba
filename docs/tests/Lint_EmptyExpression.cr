# #Patterns: Lint_EmptyExpression

# #Warn: Lint_EmptyExpression
if ()
  puts '!'
end

# #Warn: Lint_EmptyExpression
begin

end

begin
  # #Warn: Lint_EmptyExpression
  nil
end

begin
  # #Warn: Lint_EmptyExpression
  ()
end

def method

rescue
  # #Warn: Lint_EmptyExpression
  ()
end
