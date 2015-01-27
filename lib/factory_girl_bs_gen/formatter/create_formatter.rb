module FactoryGirlBsGen
  module Formatter
    class CreateFormatter < Base
      SYNTAX_TEMPLATE = "FactoryGirl.create(:%{table}, %{values})"

      def template
        SYNTAX_TEMPLATE
      end
    end
  end
end
