class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new 
    @product = Product.new
  end
  
  def create
    @product = Product.new product_params

    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find_by id: params[:id]
  end

  def update
    @product = Product.find_by id: params[:id]

    if @product.update product_params
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find_by id: params[:id]
    @product.destroy

    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(
      :title,
      :product_id,
      :price,
      :image_url,
      :diagonal,
      :ram,
      :storage,
      :system_version,
      :camera,
      :sim_card,
      :battery_capacity,
      :weight,
      :description,
      :in_stock
    )
  end
end