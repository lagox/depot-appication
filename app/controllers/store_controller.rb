class StoreController < ApplicationController
  skip_before_filter :authorize
  
  def index
    if params[:set_locale]
      redirect_to store_path(:locale => params[:set_locale])
    else
      @products = Product.all
      @time = Time.now.strftime("%Y/%m/%d %I:%M")
      session_count
      @cart = current_cart
    end
  end
  
  def session_count
    if session[:count].nil?
      @count = session[:count] = 1  
    else
      @count = session[:count] += 1
    end
  end
  
end
