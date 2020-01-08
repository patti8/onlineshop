class PagesController < ApplicationController
  def index
    @products = Product.all
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save!
      # redirect_to root_path
    else
      render 'index'
    end
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :product_id, :shipping_costs, :total_price, :status )
  end

end
