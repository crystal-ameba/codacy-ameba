require "../spec_helper.cr"

module Codacy::Ameba
  describe Config do
    it "loads default config values" do
      config = Config.load("./")
      config.tools.should eq [] of Tool
      config.files.should eq [] of String
    end

    it "loads config from the file" do
      codacy_json = <<-CONFIG
        {
          "files" : ["foo/bar/baz.js", "foo2/bar/baz.php"],
          "tools":[
            {
              "name":"jshint",
              "patterns":[
                {
                  "patternId":"latedef",
                  "parameters":[
                    {
                      "name":"latedef",
                      "value":"vars"
                    }
                  ]
                }
              ]
            }
          ]
        }
      CONFIG

      config = Config.from_json(codacy_json)
      config.files.should eq ["foo/bar/baz.js", "foo2/bar/baz.php"]
      config.tools.size.should eq 1

      tool = config.tools.first
      tool.name.should eq "jshint"
      tool.patterns.size.should eq 1

      pattern = tool.patterns.first
      pattern.id.should eq "latedef"
      pattern.parameters.size.should eq 1

      parameter = pattern.parameters.first
      parameter.name.should eq "latedef"
      parameter.value.should eq "vars"
    end
  end
end
