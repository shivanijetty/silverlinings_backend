Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'users#index'
  get '/users', to: 'users#index'
  get '/me', to: 'users#me'
  post '/login', to: 'users#login'
  post '/signup', to: 'users#create'
  get '/users/:id', to: 'users#show'
  # post '/create_habit/:name', to: 'users#create_habit'
  get '/habits', to: 'habits#index'
  get '/users/:id/habits', to: 'users#my_habits'
  post '/activities', to: 'activities#add_habit'
end
