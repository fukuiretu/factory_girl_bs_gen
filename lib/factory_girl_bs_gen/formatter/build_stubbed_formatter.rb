module FactoryGirlBsGen
  module Formatter
    class BuildStubbedFormatter < Base
      TEMPLATE = "bulid(%{table_name}, %{key-values})"

      def template
        TEMPLATE
      end
    end
  end
end
