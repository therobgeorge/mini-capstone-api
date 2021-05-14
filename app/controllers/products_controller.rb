class ProductsController < ApplicationController
  def index 
    products = Product.all 
    if params[:search]
      products = Product.where("name iLike ?", "%#{params[:search]}%")
    elsif params[:sort] = "price"
      products = products.order(:price)
    end
    render json: products
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
      quantity: params[:quantity]
    )
    product.save
    render json: product
  end
 
  def show
    product = params[:id]
    render json: Product.find(product)
  end

  def update
    product = Product.find(params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description
    product.quantity = params[:quantity] || product.quantity
    product.save
    render json: product
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "Product has been deleted."}
  end

end
