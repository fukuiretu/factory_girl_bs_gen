module FactoryGirlBsGen
  module Formatter
    class Base
      FACTORY_GIRL_SYNTAX = "FactoryGirl"

      def format(table, column_names, row, omit_syntax)
        key_values =
          [].tap do |arr|
            column_names.each_with_index do |v, i|
              arr << "#{v}:#{row[i]}"
            end
          end

        ''.tap do |str|
          str << "#{FACTORY_GIRL_SYNTAX}." unless omit_syntax
          str << sprintf(template, {table: table, values: key_values.join(", ")})
        end
      end

      def template
        raise NotImplementedError
      end
    end
  end
end
