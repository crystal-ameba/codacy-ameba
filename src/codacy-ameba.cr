require "ameba"
require "json"
require "./codacy-ameba/*"

module Codacy::Ameba
  VERSION = "0.1.0"

  def self.generate
    rules = ::Ameba::Config.load.rules

    Markdown.new.generate
    PatternsJSON.new(rules).generate
    DescriptionJSON.new(rules).generate
  end
end

Codacy::Ameba.generate
