Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :relay_points
  resources :day_offs
  get "next_delivery_date", to: "delivery_dates#next_delivery_date"
  get "list_day_off", to: "day_offs#index"
end
