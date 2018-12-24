# #Patterns: Style_NegatedConditionsInUnless

# #Warn: Style_NegatedConditionsInUnless
unless a && (b || !c)
  :nok
end

# #Warn: Style_NegatedConditionsInUnless
unless a || !b
  :nok
end

# #Warn: Style_NegatedConditionsInUnless
unless !a
  :nok
end

unless a
  :ok
end

:ok unless b

unless s.empty?
  :ok
end
