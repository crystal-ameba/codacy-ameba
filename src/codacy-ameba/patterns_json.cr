module Codacy::Ameba
  class PatternsJSON
    record Parameter,
      name : String,
      default : String do
      def to_json(json : JSON::Builder)
        json.object do
          json.field "name", name
          json.field "default", default
        end
      end
    end

    record Pattern,
      id : String,
      level : String,
      category : String,
      parameters : Array(Parameter) do
      def to_json(json : JSON::Builder)
        json.object do
          json.field "patternId", id
          json.field "level", level
          json.field "parameters", parameters
        end
      end
    end

    @patterns = [] of Pattern

    def initialize(rules, @filename = "docs/patterns.json")
      @patterns = rules.map do |rule|
        Pattern.new name(rule), level(rule), category(rule), [] of Parameter
      end
    end

    private def name(rule)
      Ameba.pattern_id(rule.name)
    end

    private def level(rule)
      case
      when rule.name.includes?("Syntax")
        "Error"
      when ["Lint", "Performance", "Style"].includes?(rule.group)
        "Warning"
      else
        "Info"
      end
    end

    private def category(rule)
      case
      when rule.name.includes?("UnreachableCode")
        "UnusedCode"
      when rule.group == "Performance"
        "Performance"
      when ["Style", "Layout"].includes?(rule.group)
        "CodeStyle"
      when rule.group == "Security"
        "Security"
      when rule.group == "Documentation"
        "Documentation"
      else
        "ErrorProne"
      end
    end

    def generate
      File.write(@filename, to_pretty_json)
    end

    def to_json(json : JSON::Builder)
      json.object do
        json.field "name", "Ameba"
        json.field "version", ::Ameba::VERSION
        json.field "patterns", @patterns
      end
    end
  end
end
