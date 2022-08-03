module ProductsHelper
    def analyze_price(product)
      if product.price > 30
        "Expensive"
      else
        "Cheap"
      end
    end
end
