module Codacy::Ameba
  class Markdown
    @rules : Array(::Ameba::Rule::Base)

    def initialize(@rules, @directory = "docs/description")
    end

    def generate
      @rules.each do |rule|
        filename = "#{@directory}/#{Ameba.pattern_id(rule.name)}.md"
        File.write(filename, rule.class.parsed_doc)
      end
    end
  end
end
