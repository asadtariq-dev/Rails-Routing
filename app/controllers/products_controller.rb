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

  # Creates a product with handling the success and error condition
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to product_url(@product), notice: "#{@product.name} was successfully added." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity, alert: 'Invalid Input' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # Action for deleting product
  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      redirect_to root_path, status: :see_other, alert: 'Item was successfully deleted.'
    else
      redirect_to @products, alert: 'Something went wrong'
    end
  end

  private

  # Filters params using Strong Parameters
  def product_params
    params.require(:product).permit(:name, :description, :image_url, :price)
  end
end
