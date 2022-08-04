class ProductsController < ApplicationController
  def index
    @products = Product.order(created_at: :desc)
  end

  def show
    @product = Product.find(params[:id])
  end

  # Creates an object of product without saving it
  def new
    @product = Product.new
  end

  # Creates an product with handling the success and error condition
  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = 'Product successfully created'
      redirect_to @product
    else
      flash[:error] = 'Something went wrong'
      render 'new'
    end
  end

  # Action for deleting product
  def destroy
    puts "=\n=\n=\n=\n="
    puts @product
    puts "=\n=\n=\n=\n="
    @product = Product.find(params[:id])
    if @product.destroy
      redirect_to root_path, status: :see_other, alert: "Item was successfully deleted."
    else
      redirect_to @products, alert: "Something went wrong"
    end
  end

  private

  # Filters params using Strong Parameters
  def product_params
    params.require(:products).permit(:name, :description, :image_url, :price)
  end
end
