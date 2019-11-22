Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :travelers, :controllers => { registrations: 'registrations', omniauth_callbacks: 'callbacks' }

  root to: "application#welcome"
  #resources :destinations
  

  #custom travel-inspiration page
  get '/travel-inspiration', to:"application#inspiration"
  
  #custom passport page
  get '/passport', to:"application#passport"

  #nested index
  get '/goals/:goal_id/destinations', to:"destinations#index", as:"goal_destinations"
  
  #nested new
  get '/goals/:goal_id/destinations/new', to:"destinations#new", as:"destinations"
  post '/goals/:goal_id/destinations', to:"destinations#create" #without this,form goes nowhere

  #nested show route to dispaly specific destination details
  get 'goals/:goal_id/destinations/:id', to:"destinations#show", as:"goal_destination"
  
  resources :goals, except: [:show]
end

