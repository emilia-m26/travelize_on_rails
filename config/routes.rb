Rails.application.routes.draw do
  devise_for :travelers, :controllers => { registrations: 'registrations', omniauth_callbacks: 'callbacks' }
    # devise_scope :traveler do
    #   get 'login', to: 'devise/sessions#new'
    # end 
    # devise_scope :traveler do
    #   get 'signup', to: 'devise/registrations#new'
    # end 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "application#welcome"
  #resources :destinations
  resources :goals, except: [:show]

  get '/travel-inspiration', to:"application#inspiration"

  get '/passport', to:"application#passport"

  #get '/destinations', to: "destinations#index", as:"destinations"
  #nested
  get '/goals/:id/destinations', to:"destinations#index", as:"goal_destinations"
  
  #nested
  get '/goals/:id/destinations/new', to:"destinations#new", as:"new_goal_destination"
  post '/destinations', to:"destinations#create" #without this,form goes nowhere

  #nested show route to dispaly specific destination details
  get 'goals/:goal_id/destinations/:id', to:"destinations#show", as:"goal_destination"

  # resources :goals do
  #   resources :destinations
  # end 

end

