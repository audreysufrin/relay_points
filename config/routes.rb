Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'relay_points/api', to: 'relay_points#index_api'
  get 'next_delivery/api', to: 'delivery_dates#next_delivery_api'
  resources :relay_points
  resources :day_offs

  root to: "relay_points#index"
  get "next_delivery_date", to: "delivery_dates#next_delivery_date"
  get "list_day_off", to: "day_offs#index"
end
