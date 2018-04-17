Rails.application.routes.draw do
  get 'users/new'
  # root 'application#hello'
  root 'static_pages#home'
  get 'static_pages/home'
  get 'sessions/new'
  get '/signup', to: 'users#new'
  resources :users
end
