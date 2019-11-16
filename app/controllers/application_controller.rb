class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
     #will not allow for someone not logged in to see any information
    before_action :authenticate_traveler!, :except => [:inspiration, :welcome]
   

    def welcome
    end

    def inspiration
        #listing all travelers with travel experience, username, and link to their personal passport page
        @travelers = Traveler.all
    end 

    def passport
        
    end 
    
    #overrides devise automatic redirect to edit page
    def after_sign_in_path_for(resource)
        @traveler = current_traveler
        goals_path
    end
end
