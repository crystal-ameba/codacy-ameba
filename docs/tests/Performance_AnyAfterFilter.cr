# #Patterns: Performance_AnyAfterFilter

# #Warn: Performance_AnyAfterFilter
[1, 2, 3].select { |e| e > 2 }.any?
# #Warn: Performance_AnyAfterFilter
[1, 2, 3].reject { |e| e > 2 }.any?

[1, 2, 3].select { |e| e > 2 }.any?(&.zero?)
[1, 2, 3].reject { |e| e > 2 }.any?(&.zero?)
