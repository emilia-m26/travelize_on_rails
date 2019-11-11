Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

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

  get '/destinations', to: "destinations#index", as:"destinations"
  get '/goals/:id/destinations', to:"destinations#index", as:"goal_destinations"
end

