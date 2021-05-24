class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  
  def index 
    products = Product.all 
    
    if params[:category]
      category = category.find_by("name iLike ?", params[category]
      products = category.products
    end 

    # if params[:search]
    #   products = Product.where("name iLike ?", "%#{params[:search]}%")
    # elsif params[:sort] == "price"
    #   products = products.order(:price)
    # end
    #   render json: {current_user: current_user, products: products}
    # else
    #   render json: [], status: :unauthorized
    # end 
      
    render json: products
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
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
