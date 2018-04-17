Rails.application.routes.draw do
  root 'static_pages#home'
  get 'users/new'
  get 'static_pages/home'
  get 'sessions/new'
  get '/signup', to: 'users#new'
  
  post '/complete-task', to: 'to_do_items#complete_task'
  
  resources :users
end
