class CatalogsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @products = Product.order_by(parameter).order(sort_column+ " " + sort_direction).paginate(:page => params[:page], :per_page => 12)
    @carousel = Product.last(5)
    @cart_items = current_cart.line_items
    @cart = current_cart
  end
  
  private

    def parameter
      params[:where] ||= session[:method]
      session[:method] = params[:where]
      return params[:where]
    end

    def sort_column
      Product.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

end
