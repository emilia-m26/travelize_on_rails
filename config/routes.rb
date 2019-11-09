Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :destinations
  resources :goals
  resources :travelers
  
  #custom link of /passport
  get 'passport', :to => 'destinations#index' 
  #custom link or travel inspiration - lists all users
  get 'travel-inspiration', :to => 'travelers#index' 
end

