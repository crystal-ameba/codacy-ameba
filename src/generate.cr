require "ameba"
require "./codacy-ameba/util.cr"
require "./codacy-ameba/generate/*"

module Codacy::Ameba
  def self.generate
    rules = ::Ameba::Config.load.rules

    Markdown.new(rules).generate
    PatternsJSON.new(rules).generate
    DescriptionJSON.new(rules).generate
  end
end

Codacy::Ameba.generate
