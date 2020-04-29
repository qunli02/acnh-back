Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :users, :turnip_sell_prices
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'
      end
    end
  end
end
