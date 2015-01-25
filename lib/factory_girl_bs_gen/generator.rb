class Generator
  attr_reader :table, :reader, :formatter

  def initialize(table: , file: , format_type: )
    @table = table
    extension = File.extname(file).split(".").last
    @reader = Object.const_get("FactoryGirlBsGen::Reader::#{extension.capitalize}Reader").new(file)
    @formatter = Object.const_get("FactoryGirlBsGen::Formatter::#{format_type.capitalize}Formatter").new
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
      puts @formatter.format(header, v)
    end
    sleep 1
  end
end
