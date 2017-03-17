class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_locale,on: :search

  def set_locale
    I18n.with_locale do
      I18n.locale = session[:locale] || I18n.default_locale
    end
  end

  def current_cart
    cart = Cart.find_by(id: session[:cart_id]) || Cart.create
    session[:cart_id] = cart.id
    cart
  end
end
