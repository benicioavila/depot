class StoreController < ApplicationController
  def index
		#debugger    
		@count = counter_index        
    @cart = current_cart
    @products = Product.all

  end  

  def counter_index
    if session[:counter].nil?
        session[:counter] = 0
    else
        session[:counter] += 1
    end
     session[:counter]
  end

end
