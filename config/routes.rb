Rails.application.routes.draw do
  get 'sessions/new'
  root 'application#hello'
end
