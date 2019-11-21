Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :travelers, :controllers => { registrations: 'registrations', omniauth_callbacks: 'callbacks' }

  root to: "application#welcome"
  #resources :destinations
  resources :goals, except: [:show]

  #custom travel-inspiration page
  get '/travel-inspiration', to:"application#inspiration"
  #custom passport page
  get '/passport', to:"application#passport"

  #nested index
  get '/goals/:id/destinations', to:"destinations#index", as:"goal_destinations"
  
  #nested new
  get '/goals/:id/destinations/new', to:"destinations#new", as:"new_goal_destination"
  post '/destinations', to:"destinations#create" #without this,form goes nowhere

  #nested show route to dispaly specific destination details
  get 'goals/:goal_id/destinations/:id', to:"destinations#show", as:"goal_destination"

end

