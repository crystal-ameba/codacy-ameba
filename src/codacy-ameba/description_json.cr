module Codacy::Ameba
  class DescriptionJSON
    record Parameter,
      name : String,
      description : String do
      def to_json(json : JSON::Builder)
        json.object do
          json.field "name", name
          json.field "description", description
        end
      end
    end

    record Description,
      id : String,
      title : String,
      description : String,
      time_to_fix : Int32,
      parameters : Array(Parameter) do
      def to_json(json : JSON::Builder)
        json.object do
          json.field "patternId", id
          json.field "title", title
          json.field "description", description
          json.field "timeToFix", time_to_fix
          json.field "parameters", parameters
        end
      end
    end

    @descriptions : Array(Description)

    def initialize(rules, @filename = "docs/description/description.json")
      @descriptions = rules.map do |rule|
        Description.new rule.name, rule.description, rule.description, 5, [] of Parameter
      end
    end

    def generate
      File.write(@filename, to_pretty_json)
    end

    def to_json(json : JSON::Builder)
      @descriptions.to_json(json)
    end
  end
end
