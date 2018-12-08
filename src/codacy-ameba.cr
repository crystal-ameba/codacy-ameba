require "ameba"
require "json"
require "./codacy-ameba/*"

module Codacy::Ameba
  VERSION = "0.1.0"

  def self.generate
    Markdown.new.generate
    PatternsJSON.new.generate
    DescriptionJSON.new.generate
  end
end

Codacy::Ameba.generate
