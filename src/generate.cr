require "ameba"
require "./codacy-ameba/util.cr"
require "./codacy-ameba/generate/*"

module Codacy::Ameba
  def self.generate
    rules = ::Ameba::Config.load.rules
    rules.reject! { |r| r.is_a?(::Ameba::Rule::Lint::Syntax) }

    Markdown.new(rules).generate
    PatternsJSON.new(rules).generate
    DescriptionJSON.new(rules).generate
  end
end

Codacy::Ameba.generate
