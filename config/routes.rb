Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "application#welcome"
  #resources :destinations
  resources :goals
  resources :travelers

  # #custom link of /passport
  # get 'passport', :to => 'destinations#index' 
  #custom link for travel inspiration - lists all users
  get 'travel-inspiration', :to => 'travelers#index'
  #custom link for signup
  get 'signup', :to => 'travelers#new' 

  # #nested index route to display destinations for a specific goal
  # get 'goals/:id/destinations'
  # #nested show route to dispaly specific destination details
  # get 'goals/:id/destinations/:id'

  #not nested
  get '/destinations', to: "destinations#index", as:"destinations"
  #nested
  get '/goals/:id/destinations', to:"destinations#index", as:"goal_destinations"

  # #not nested (I don't want to support this way of making new destination)
  # ##get'/destinations/new', to: "destinations#new", as:"new_destination"
  
  #nested
  get '/goals/:id/destinations/new', to:"destinations#new", as:"new_goal_destination"
  post '/destinations', to:"destinations#create" #without this,form goes nowhere

  # resources :goals do
  #   resources :destinations
  # end 

end

