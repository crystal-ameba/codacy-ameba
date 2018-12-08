require "json"

module Codacy::Ameba
  struct Parameter
    JSON.mapping(
      name: String,
      value: String
    )
  end

  struct Pattern
    JSON.mapping(
      patternId: String,
      parameters: Array(Parameter)
    )
  end

  struct Tool
    JSON.mapping(
      name: String,
      patterns: Array(Pattern)
    )
  end

  struct Config
    JSON.mapping(
      files: Array(String),
      tools: Array(Tool)
    )

    def load(path = "/src/.codacy.json")
      Config.from_json(path)
    end
  end
end
