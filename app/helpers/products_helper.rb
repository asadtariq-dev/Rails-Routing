module ProductsHelper
  def show_errors(object, field)
    object.errors[field] unless object.errors.blank?
  end
end
