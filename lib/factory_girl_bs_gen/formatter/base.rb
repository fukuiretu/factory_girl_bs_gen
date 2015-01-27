module FactoryGirlBsGen
  module Formatter
    class Base
      def format(table, column_names, row)
        key_values =
          [].tap do |arr|
            column_names.each_with_index do |v, i|
              arr << "#{v}:#{row[i]}"
            end
          end
        sprintf(template, {table: table, values: key_values.join(", ")})
      end

      def template
        raise NotImplementedError
      end
    end
  end
end
