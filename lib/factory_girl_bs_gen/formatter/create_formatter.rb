module FactoryGirlBsGen
  module Formatter
    class CreateFormatter < Base
      TEMPLATE = "bulid(%{table_name}, %{key-values})"

      def template
        TEMPLATE
      end
    end
  end
end
