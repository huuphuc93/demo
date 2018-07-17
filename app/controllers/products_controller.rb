class ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token
  caches_page :index, :show
  before_action :authenticate_user!, except: %i(index, show)
  caches_action :edit, cache_path: -> {edit_product_path(params[:id])}

  def index
    @products = Product.page(params[:page]).per_page(10)
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params
    if @product.save
      redirect_to products_url, notice: "Successfully created product."
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes product_params
      expire_page products_path
      expire_page product_path(@product)
      expire_page '/'
      FileUtils.rm_rf "#{page_cache_directory}/products/page"
      expire_action edit_product_path(@product)
      redirect_to products_url, notice: "Successfully updated product."
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_url, notice: "Successfully destroyed product."
  end

  private

  def product_params
    params.require(:product).permit :name, :price
  end
end
