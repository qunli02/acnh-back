Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :users, :user_turnip_sell_prices, :turnip_sell_prices
      end
    end
  end
end
