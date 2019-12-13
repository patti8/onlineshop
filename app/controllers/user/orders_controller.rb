class User::OrdersController < ApplicationController
before_action :authenticate_user!

  def index
    @orders = Order.all
    
    @order = Order.new(order_params )

    if @order.save!
      redirect_to user_orders_path
    else
      render 'new'
    end
  end

  def new
    @order = Order.new
  end

  def create

  end

  def show
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :product_id, :shipping_costs, :total_price, :status)
  end

end
