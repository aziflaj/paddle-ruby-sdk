module Paddle
  module DataTypes
    class Product
      attr_reader :id,
                  :name,
                  :description,
                  :base_price,
                  :sale_price,
                  :screenshots,
                  :icon

      def initialize(id, name, description, base_price, sale_price, screenshots, icon)
        @id = id
        @name = name
        @description = description
        @base_price = base_price
        @sale_price = sale_price
        @screenshots = screenshots
        @icon = icon
      end
    end
  end
end
