module FactoryGirlBsGen
  module Formatter
    class BuildFormatter < Base
      SYNTAX_TEMPLATE = "FactoryGirl.build(%{values})"

      def template
        SYNTAX_TEMPLATE
      end
    end
  end
end
