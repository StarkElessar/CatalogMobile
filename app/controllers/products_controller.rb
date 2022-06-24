class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit update destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new 
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)

    if @product.save
      flash[:success] = 'Товар успешно добавлен в каталог!'
      redirect_to products_path
    else
      render :new
    end
  end
  
  def edit
  end
  
  def update
    if @product.update(product_params)
      flash[:success] = 'Товар успешно обновлён!'
      redirect_to products_path
    else
      render :edit
    end
  end
  
  def destroy
    @product.destroy
    flash[:success] = 'Товар успешно удалён из каталога!'

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

  def set_product
    @product = Product.find(params[:id])
  end
end