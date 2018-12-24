module Codacy::Ameba
  class Formatter < ::Ameba::Formatter::BaseFormatter
    def initialize(@output = STDOUT, @base_dir = "./")
    end

    def source_finished(source)
      source.issues.each do |e|
        if e.rule.is_a?(::Ameba::Rule::Lint::Syntax)
          output << format_error(source)
          return
        end

        next if e.disabled?

        if loc = e.location
          output << format_issue(e, source, loc) << "\n"
        end
      end
    end

    private def format_issue(issue, source, location)
      {
        filename:  remove_base_dir(source.path),
        message:   issue.message,
        patternId: issue.rule.name.gsub("/", "_"),
        line:      location.line_number,
      }.to_json
    end

    private def format_error(source)
      {
        filename: remove_base_dir(source.path),
        message:  "could not parse the file",
      }.to_json
    end

    private def remove_base_dir(path)
      path.gsub(/^#{@base_dir}/, "").gsub(/^\//, "")
    end
  end
end
