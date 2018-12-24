# #Patterns: Lint_UselessConditionInWhen

case
when utc?
  # #Warn: Lint_UselessConditionInWhen
  io << " UTC" if utc?
end
