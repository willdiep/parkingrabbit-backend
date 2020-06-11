Rails.application.routes.draw do
  resources :bookings
  resources :listings
  resources :users

  # creates a new session
  post '/auth', to: 'auth#create'
  get '/reauth', to: 'auth#reauth'

  # renders current user's id - user's profile information
  get '/current_user', to: 'auth#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
