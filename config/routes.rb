Rails.application.routes.draw do
  resources :users, expect: [:new]  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :articles
  # Defines the root path route ("/")
  root "users#new"
  get 'signup', to: 'users#new'
end
