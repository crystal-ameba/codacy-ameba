require "ameba"
require "json"
require "./codacy-ameba/*"
require "./codacy-ameba/generate/*"

module Codacy::Ameba
  extend self

  def pattern_id(name)
    name.gsub("/", "_")
  end

  def generate
    rules = ::Ameba::Config.load.rules

    Markdown.new(rules).generate
    PatternsJSON.new(rules).generate
    DescriptionJSON.new(rules).generate
  end
end

Codacy::Ameba.generate
