module Codacy::Ameba
  class Runner
    getter dir : String

    def initialize(@dir = "/src")
    end

    def run
      codacy_config = Config.load(dir)

      ameba_config = ::Ameba::Config.load
      configure_files(ameba_config, codacy_config.files)
      configure_rules(ameba_config, codacy_config.tools)
      configure_formatter(ameba_config)

      ::Ameba.run(ameba_config)
    end

    private def configure_files(config, files)
      if files.nil? || files.empty?
        config.files = default_files
      else
        config.files = files.map { |f| "#{dir}/#{f}" }
      end
    end

    private def configure_rules(config, tools)
      return if tools.nil?

      patterns = tools
        .find { |tool| tool.name == TOOL_NAME }
        .try &.patterns

      if patterns
        selected_rule_names = patterns.map { |pattern| Ameba.get_rule_name(pattern.id) }
        config.rules.map! { |r| r.enabled = false; r }
        config.update_rules(selected_rule_names, enabled: true)
      end
    end

    private def configure_formatter(config)
      config.formatter = Codacy::Ameba::Formatter.new(STDOUT, dir)
    end

    private def default_files
      ["#{dir}/**/*.cr"]
    end
  end
end
