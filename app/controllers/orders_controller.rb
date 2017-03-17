class OrdersController < ApplicationController
 # before_action :non_empty_cart, except: [:search, :index, :show]

  def new
    @order = Order.new
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = current_user.orders.build(params.require(:order).permit(:name, :address, :pincode, :mobile,:user_id))
    @order.cart_id = current_cart.id
    if @order.save
      @items = current_cart.line_items
      respond_to do |format|
        format.js
      end
      session[:cart_id] = nil
    else
      flash[:notice] = "Error"
      redirect_to catalogs_path
    end
  end

  private
    def non_empty_cart
      redirect_to root_path if current_cart.line_items.count == 0
    end
end
