require "../spec_helper.cr"

module Codacy::Ameba
  describe Runner do
    describe "#run" do
      it "successfully runs the analysis" do
        Codacy::Ameba::Runner.new(".src/").run.should be_truthy
      end
    end
  end
end
