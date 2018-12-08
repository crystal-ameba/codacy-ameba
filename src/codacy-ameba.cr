require "ameba"
require "json"
require "./codacy-ameba/*"

module Codacy::Ameba
  VERSION = "0.1.0"

  extend self

  def pattern_id(name)
    name.gsub("/", "_")
  end

  def generate
    rules = ::Ameba::Config.load.rules

    Markdown.new.generate
    PatternsJSON.new(rules).generate
    DescriptionJSON.new(rules).generate
  end
end

Codacy::Ameba.generate
