class Api::V1::ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products, status: 200
  end

  def create
    product = Product.new(
      name: prod_params[:name],
      brand: prod_params[:brand],
      price: prod_params[:price],
      description: prod_params[:description]
    )
    if product.save
      render json: product, status: 201
    else
      render json: {error: "Error in process request"}, status: 500
    end
  end

  def show
    product = Product.find_by(id: params[:id])
    if product
      render json: product, status: 200
    else
      render json: {error: "Product Not Found"}, status: 404
    end
  end

  private
  def prod_params
    params.require(:prodcut).permit([:name, :brand, :price, :description])
  end
end
