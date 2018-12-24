# #Patterns: Performance_FirstLastAfterFilter

# #Warn: Performance_FirstLastAfterFilter
[1, 2, 3].select { |e| e > 2 }.last
# #Warn: Performance_FirstLastAfterFilter
[1, 2, 3].select { |e| e > 2 }.last?
# #Warn: Performance_FirstLastAfterFilter
[1, 2, 3].select { |e| e > 2 }.first
# #Warn: Performance_FirstLastAfterFilter
[1, 2, 3].select { |e| e > 2 }.first?

[1, 2, 3].select { |e| e > 2 }.size
[1, 2, 3].select { |e| e > 2 }.any?
