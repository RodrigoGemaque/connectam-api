Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'auth/user'
  
  namespace :admin, defaults: { format: :json}  do
    namespace :v1 do
      resources :cities,
                :harbors,
                :owner_ships, 
                :tickets, 
                :orders,
                :ships,
                :routes,
                :line_items,
                :travels, only: [:index, :create, :show, :destroy]

      get "home" => "home#index"          
    end
  end
 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
