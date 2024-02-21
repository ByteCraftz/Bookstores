# config/routes.rb
Rails.application.routes.draw do
  root 'home#index'
  post '/login', to: 'sessions#login'
end