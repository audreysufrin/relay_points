Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "relay_points#index"
  get 'relay_points/api', to: 'relay_points#index_api'
  resources :relay_points
  get 'day_offs/api', to: 'day_offs#next_delivery_api'
  resources :day_offs
  get '/test_api', to: 'pages#api'
end
