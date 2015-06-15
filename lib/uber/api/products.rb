require 'uber/arguments'
require 'uber/api_request'
require 'uber/models/product'

module Uber
  module API
    module Products
      def products(*args)
        arguments = Uber::Arguments.new(args)
        perform_with_objects(:get, "/v1/products", arguments.options, Product)
      end
    end
  end
end
