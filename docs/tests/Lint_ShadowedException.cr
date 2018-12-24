# #Patterns: Lint_ShadowedException

begin
  # #Warn: Lint_ShadowedException
rescue Exception
  handle_exception
rescue ArgumentError
  handle_argument_error_exception
end

begin
  # #Warn: Lint_ShadowedException
rescue Exception
  2
rescue MySuperException
  3
end

begin
  # #Warn: Lint_ShadowedException
rescue Exception | IndexError
end

begin
  # #Warn: Lint_ShadowedException
rescue IndexError | Exception
rescue Exception
rescue
end

begin
  # #Warn: Lint_ShadowedException
rescue IndexError
rescue IndexError
end

begin
  do_something
rescue Exception
  nil
end
