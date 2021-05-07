class ProductsController < ApplicationController
  def all_products 
    products = Product.all
    render json: products.as_json
  end
  def one_product
    product = Product.first
    render json: product.as_json
  end

  def product_query
    product = params[:product_id]
    render json: Product.find(product).as_json
  end

  def product_name
    product = params[:name]
    render json: Product.find_by(:name "#{product}")
  end
end
