module Codacy::Ameba
  TOOL_NAME = "ameba"

  extend self

  def generate_pattern_id(rule_name)
    rule_name.gsub("/", "_")
  end

  def get_rule_name(pattern_id)
    pattern_id.gsub("_", "/")
  end
end
