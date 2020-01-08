class Admin::ProductsController < ApplicationAdminController

  def index
    @adm_products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save!
    if @product.save
      redirect_to admin_products_path
    else
      render 'new'
    end
  end

  def destroy
  end

  private

  def product_params
    params.require(:product).permit(:product_name, :description, :rating, :price, :admin_id)
  end

end
