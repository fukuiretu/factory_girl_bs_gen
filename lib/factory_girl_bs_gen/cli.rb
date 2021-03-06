require 'thor'

module FactoryGirlBsGen
  class CLI < Thor

    desc "factory_girl_bs_gen -f /path/to/hoge.csv", "factory_girl bulid syntax generator"
    option :table, type: :string, aliases: '-t', desc: "target table name", required: true
    option :file, type: :string, aliases: '-f', desc: "target file is csv", required: true
    option :format, type: :string, desc: "target table name", required: true
    option :output, type: :string, aliases: '-o', desc: "output"
    option :omit_syntax, type: :boolean, desc: "And omit the syntax"
    def exec
      Generator.new(
        options
      ).gen
    end
  end
end
