class StoreController < ApplicationController
  def index
    @products = Product.all
    @time = Time.now.strftime("%Y/%m/%d %I:%M")
  end

end
