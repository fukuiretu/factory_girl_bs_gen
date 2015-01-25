module FactoryGirlBsGen
  module Formatter
    class AttributesForFormatter < Base
      TEMPLATE = "bulid(%{table_name}, %{key-values})"

      def template
        TEMPLATE
      end
    end
  end
end
