class Cart < ActiveRecord::Base
    #protect_from_forgery
    has_many :line_items, :dependent => :destroy

   private

   def current_cart
      Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      session[:cart_id]=cart.id
      cart
    end

end
