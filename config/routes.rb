Rails.application.routes.draw do
  root    'static_pages#home'
  get     'users/new'
  get     'static_pages/home'
  get     '/signup', to: 'users#new'
  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'
  
  post '/complete-task', to: 'to_do_items#complete_task'
  
  resources :users
end
