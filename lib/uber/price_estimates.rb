require 'uber/arguments'
require 'uber/request'
require 'uber/price'

module Uber
  module API
    module PriceEstimates
      def price_estimations(*args)
        arguments = Uber::Arguments.new(args)
        perform_with_objects(:get, "/v1/estimates/price", arguments.options, Price)
      end
    end
  end
end
