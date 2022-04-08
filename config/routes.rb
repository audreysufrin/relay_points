Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "relay_points#index"
  get 'relay_points/api', to: 'relay_points#index_api'
  resources :relay_points
  get 'days_offs/api', to: 'days_offs#next_delivery_api'
  resources :day_offs
end
