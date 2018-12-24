# #Patterns: Lint_UselessAssign

def method
  # #Warn: Lint_UselessAssign
  a = 2
end

->{
  # #Warn: Lint_UselessAssign
  a = 2
}

3.times do
  # #Warn: Lint_UselessAssign
  a = 1
end

def method
  # #Warn: Lint_UselessAssign
  var = true
  var = false
  var
end

def method
  # #Warn: Lint_UselessAssign
  a, b = {1, 2}
  a
end

def method(a)
  if a
    # #Warn: Lint_UselessAssign
    a = 2
  end
end

def method
  a = 0
  if something
    # #Warn: Lint_UselessAssign
    a = 1
    a = 2
  else
    a = 2
  end
  a
end

def method(a)
  # #Warn: Lint_UselessAssign
  (a = 1) || (b = 1)
  a
end

def method(a)
  while a < 10
    # #Warn: Lint_UselessAssign
    b = a
  end
end

def method
  a = 2
  a
end

def method
  var = true
  3.times { var = false }
end

def method
  a = 1
  if a
    nil
  end
end

def method
  $? = 3
end

def method
  a, b = {1, 2}
  a + b
end

def method
  if matches
    matches = owner.lookup_matches signature
  else
    matches = owner.lookup_matches signature
  end

  matches
end
