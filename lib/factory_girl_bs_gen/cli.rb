require 'thor'

module FactoryGirlBsGen
  class CLI < Thor

    desc "factory_girl_bs_gen -f /path/to/hoge.csv", "factory_girl bulid syntax generator"
    option :table, type: :string, aliases: '-t', desc: "target table name", required: true
    option :file, type: :string, aliases: '-f', desc: "target file is {csv|yaml|json}", required: true
    option :format, type: :string, desc: "target table name", required: true
    option :output, type: :string, aliases: '-o', desc: "output"
    def exec
      Generator.new(
        table: options[:table],
        file: options[:file],
        format_type: options[:format],
      ).gen
    end
  end
end
