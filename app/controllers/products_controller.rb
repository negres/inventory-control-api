class ProductsController < ApplicationController

  def index
    @products = Product.all

    render status: :ok
  end

  def show
    @product = Product.find(params[:id])

    render status: :ok
  end

  def create
    product = Product.new(product_params)

    if product.save
      render status: :created, json: { id: product.id }
    else
      render status: :unprocessable_entity, json: { error: 'error' }
    end
  end

  def destroy
    product = Product.find(params[:id])

    if product.destroy
      render status: :ok, json: {}
    else
      render status: :unprocessable_entity, json: { error: 'error' }
    end
  end

  def update
    product = Product.find(params[:id])

    if product.update(product_params)
      render status: :ok
    else
      render status: :unprocessable_entity, json: { error: 'error' }
    end
  end

  private

  def product_params
    params.permit(:name, :size, :quantity, :reference, :value, :image)
  end
end
