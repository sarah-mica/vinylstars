Rails.application.routes.draw do
  resources :conditions
  resources :artists
  resources :albums
  resources :categories

  root to: "albums#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
