# #Patterns: Style_RedundantReturn

def foo
  # #Warn: Style_RedundantReturn
  return :bar
end

def bar(arg)
  case arg
  when .nil?
    # #Warn: Style_RedundantReturn
    return "nil"
  when .blank?
    # #Warn: Style_RedundantReturn
    return "blank"
  else
    # #Warn: Style_RedundantReturn
    return "empty"
  end
end

def foo
  :bar
end

def bar(arg)
  case arg
  when .nil?
    "nil"
  when .blank?
    "blank"
  else
    "empty"
  end
end
