module FactoryGirlBsGen
  module Reader
    class Base
      attr_reader :file

      def initialize(file)
        @file = file
      end

      def read
        raise NotImplementedError
      end
    end
  end
end
