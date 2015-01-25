require 'csv'

module FactoryGirlBsGen
  module Reader
    class CsvReader < Base
      def read
        [].tap do |result|
          CSV.foreach(@file) { |v| result << v }
        end
      end
    end
  end
end
