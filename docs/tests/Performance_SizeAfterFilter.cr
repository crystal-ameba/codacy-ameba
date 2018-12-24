# #Patterns: Performance_SizeAfterFilter

# #Warn: Performance_SizeAfterFilter
[1, 2, 3].select { |e| e > 2 }.size
# #Warn: Performance_SizeAfterFilter
[1, 2, 3].reject { |e| e < 2 }.size
# #Warn: Performance_SizeAfterFilter
[1, 2, 3].reject(&.empty?).size

[1, 2, 3].select { |e| e > 2 }
[1, 2, 3].reject { |e| e < 2 }
[1, 2, 3].count { |e| e > 2 && e.odd? }
[1, 2, 3].count { |e| e < 2 && e.even? }

User.select("field AS name").count
Company.select(:value).count
