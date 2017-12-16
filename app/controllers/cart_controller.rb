class CartController < ApplicationController
  
  def index
    @cart = session[:cart]
    
  end
  
  def clear
    session[:cart] = nil
    redirect_to :action => :index
  end

  def remove
    id = params[:id]
    cart = session[:cart]
    cart.delete(id)
    redirect_to :action => :index
  end
  
  def add
    # id of the item we want to add to the cart
    id = params[:id]
    
    # create or retreive the cart information from the session hash
    cart = session[:cart] ||= {}
    
    # updating the amount of the item specified by the id to hold in the cart
    cart[id] = (cart[id] || 0) + 1
    
    puts "purchasing #{cart[id]} amount of the item with id #{id}"
    
    redirect_to :action => :index
    
  end
  
end