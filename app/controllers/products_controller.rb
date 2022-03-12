class ProductsController < ApplicationController

  def index
    @products = Product.all

    render status: :ok
  end

  def show
    @product = Product.find(params[:id])

    render status: :ok
  end
end
