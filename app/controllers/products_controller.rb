class ProductsController < ApplicationController
  def index 
    products = Product.all
    render json: products.as_json
  end
 
  def show
    product = params[:id]
    render json: Product.find(product).as_json
  end

end
