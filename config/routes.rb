Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth/user'

  mount_devise_token_auth_for 'OwnerShip', at: 'auth/owner_ship'
  # as :owner_ship do
  #   # Define routes for OwnerShip within this block.
  # end

  
  
  namespace :admin  do
    namespace :v1 do
      resources :cities,
                :harbors,
                :owner_ships, 
                :tickets, 
                :orders,
                :ships,
                :routes,
                :users,
                :line_items,
                :travels
      get "home" => "home#index"          
    end
  end
 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
