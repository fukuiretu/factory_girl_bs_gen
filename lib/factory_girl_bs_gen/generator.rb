module FactoryGirlBsGen
  class Generator
    attr_reader :options

    def initialize(options = {})
      @options = options

      file = options[:file]
      extension = File.extname(file).split(".").last
      @reader =
        Object.const_get("FactoryGirlBsGen::Reader::#{extension.capitalize}Reader").new(file)
      @formatter =
        Object.const_get("FactoryGirlBsGen::Formatter::#{@options[:format].capitalize}Formatter").new
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
      out_records = []
      records.each do |v|
        out_records << @formatter.format(
          @options[:table],
          header,
          v,
          @options[:omit_syntax]
        )
      end

      if @options[:output]
        File.write(options[:output], out_records.join("\n"))
      else
        puts "outputs:"
        out_records.each do |v|
          puts "\t" << v
        end
      end
    end
  end
end
