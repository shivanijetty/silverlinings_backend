Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'users#index'

  get '/users', to: 'users#index'
  get '/me', to: 'users#me'
  get '/users/:id', to: 'users#show'
  get '/habits', to: 'habits#index'
  get '/users/:id/habits', to: 'users#my_habits'
  get '/users/:id/activities', to: 'users#my_progress'

  post '/login', to: 'users#login'
  post '/signup', to: 'users#create'
  post '/enroll', to: 'activities#enroll'

  delete '/activities/:id', to: 'activities#giveup'


end


