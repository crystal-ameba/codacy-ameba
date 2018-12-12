module Codacy::Ameba
  class Formatter < ::Ameba::Formatter::BaseFormatter
    def initialize(@output = STDOUT, @base_dir = "./")
    end

    def source_finished(source)
      source.issues.each do |e|
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
      }.to_pretty_json
    end

    private def remove_base_dir(path)
      path.gsub(/^#{@base_dir}/, "").gsub(/^\//, "")
    end
  end
end
