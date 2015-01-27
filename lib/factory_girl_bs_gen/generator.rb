module FactoryGirlBsGen
  class Generator
    attr_reader :table, :reader, :formatter

    def initialize(options = {})
      @table = options[:table]
      file = options[:file]
      extension = File.extname(file).split(".").last
      @reader = Object.const_get("FactoryGirlBsGen::Reader::#{extension.capitalize}Reader").new(file)
      @formatter = Object.const_get("FactoryGirlBsGen::Formatter::#{options[:format].capitalize}Formatter").new
    end

    def gen
      resources = read
      write(resources[0], resources[1..-1])
    end

    private

    def read
      @reader.read
    end

    def write(header, records)
      records.each do |v|
        puts @formatter.format(@table, header, v)
      end
    end
  end
end
