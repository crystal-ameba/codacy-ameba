require "ameba"
require "./codacy-ameba/*"

Codacy::Ameba::Runner.new.run
