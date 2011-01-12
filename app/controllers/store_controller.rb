class StoreController < ApplicationController
  def index
    @products = Product.all
    @time = Time.now.strftime("%Y/%m/%d %I:%M")
    session_count
    @cart = current_cart
  end
  
  def session_count
    if session[:count].nil?
      @count = session[:count] = 1  
    else
      @count = session[:count] += 1
    end
  end
  
end
