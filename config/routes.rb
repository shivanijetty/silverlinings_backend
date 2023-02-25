Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'users#index'

  get '/users', to: 'users#index'
  get '/me', to: 'users#me'
  get '/users/:id', to: 'users#show'
  get '/users/:id/habits', to: 'users#my_habits'
  get '/users/:id/activities', to: 'users#my_progress'
  get '/habits', to: 'habits#index'
  get 'activities/:id', to: 'activities#show'
  get 'activities', to: 'activities#index'

  post '/login', to: 'users#login'
  post '/signup', to: 'users#create'
  post '/enroll', to: 'activities#enroll'

  patch '/users/:id/activities/:id', to: 'activities#track_progress'

  delete '/users/:id/activities/:id', to: 'activities#giveup'


end


