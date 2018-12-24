# #Patterns: Lint_UnreachableCode

def foo
  foo = 1
  return false
  # #Warn: Lint_UnreachableCode
  foo
end

def method
  if a > 0
    return :positive
  else
    return :negative
  end
  # #Warn: Lint_UnreachableCode
  :unreachable
end

def foo
  begin
    return false
  rescue Error
    return false
  rescue Exception
    return false
  end
  # #Warn: Lint_UnreachableCode
  :unreachable
end

def method

rescue
  return 22
  # #Warn: Lint_UnreachableCode
  :unreachable
end

def method
  while something
    if :foo
      return :foo
    else
      return :foobar
    end
  end
  # #Warn: Lint_UnreachableCode
  :unreachable
end

def method
  while a < 5
    next
    # #Warn: Lint_UnreachableCode
    puts a
  end
end

def method
  # #Warn: Lint_UnreachableCode
  (return 22) && puts "a"
end

def foo
  a = 1
  return false if bar
  a
end

while something
  break
end
:reachable

a = 1
exit 0 if a > 0
a
