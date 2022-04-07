Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :relay_points
  root to: "relay_points#index"
  get 'relay_points/api', to: 'relay_points#index_api'
  resources :day_offs
  get "next_delivery_date", to: "delivery_dates#next_delivery_date"
  get 'next_delivery/api', to: 'delivery_dates#next_delivery_api'
end
