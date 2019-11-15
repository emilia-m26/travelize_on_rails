class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
     #will not allow for someone not logged in to see any information
    before_action :authenticate_traveler!, :except => [:inspiration, :welcome]
   

    def welcome
    end

    def inspiration
    end 

    def passport
    end 
    
    #overrides devise automatic redirect to edit page
    def after_sign_in_path_for(resource)
        stored_location_for(resource) || goals_path
    end
end
