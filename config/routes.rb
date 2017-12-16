Rails.application.routes.draw do
  get 'cart/index'

  resources :items
  
  get '/category/:id' => 'items#category'
  post 'search' => 'items#search'
  
  get "/cart/clear" => 'cart#clear'
 
  get "/cart/:id" => 'cart#add'
  
  get "/cart/remove/:id" => 'cart#remove'
  
  

end
