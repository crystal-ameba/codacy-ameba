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
      id: {type: String, key: "patternId"},
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
      files: {type: Array(String), default: [] of String},
      tools: {type: Array(Tool), default: [] of Tool}
    )

    def self.load(base_dir, filename = ".codacy.json")
      data = File.read("#{base_dir}/#{filename}")
      Config.from_json(data)
    rescue
      Config.from_json("{}")
    end
  end
end
