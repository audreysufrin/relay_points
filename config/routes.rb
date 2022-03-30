Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :relay_points
  resources :delivery_calendars
  resources :day_offs
  get "delivery_dates/next_delivery_date", to: "delivery_dates#next_delivery_date"
end
