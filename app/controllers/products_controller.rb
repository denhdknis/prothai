class ProductsController < ApplicationController
  before_action :create_info , only: [:index, :show]

  def create_info
    @product = Product.order('id ASC').limit(40)
    @periods = Period.order('id ASC')
    @countrys = Country.order('id ASC')
  end

  def index
    @products = Product.order('id DESC').where.not(slider_photo1: nil,id: 32).limit(3)
  end

  def show
    @product = Product.find(params[:id])
    @relation_products = Product.order('id ASC').limit(5)
    @countries = Country.order('id ASC').limit(20)
    @connect_tags = @product.connect_tags
    @spn_product = Product.find(42)
  end
end
