class Admin::OrdersController < ApplicationAdminController

  def index
    @orders = Order.all
  end

  def new
  end

  def show
  end

  def destroy
  end

end
