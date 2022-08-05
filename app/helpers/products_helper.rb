module ProductsHelper
    def analyze_price(product)
      if product.price > 30
        "Expensive"
      else
        "Cheap"
      end
    end

    def show_errors(object, field_name)
      puts object.name
      puts "\n\n\n\n\n\n\n\n\n\n\ndg\n\nas\nd\nufgadga\n\n\n\n\n\n\n\n\n"
      if object.errors.any?
        puts "error"
        if !object.errors.messages[field_name].blank?
          puts object.errors.messages[field_name].join(", ")
        end
      end
    end
end
