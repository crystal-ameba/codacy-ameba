require "../spec_helper.cr"

module Codacy::Ameba
  describe Formatter do
    output = IO::Memory.new
    subject = Formatter.new output

    describe "#source_finished" do
      it "doesn't write if source is valid" do
        subject.source_finished ::Ameba::Source.new ""
        output.to_s.should eq ""
      end

      it "writes invalid source" do
        s = ::Ameba::Source.new "", "./tst.cr"
        rule = ::Ameba::Config.load.rules.first
        rule.enabled = true

        s.add_issue rule, {1, 1}, "error"
        subject.source_finished s
        issue = JSON.parse(subject.output.to_s).as_h
        issue["filename"].should eq "tst.cr"
        issue["message"].should eq "error"
        issue["patternId"].should eq Ameba.generate_pattern_id(rule.name)
        issue["line"].should eq 1
      end
    end
  end
end
