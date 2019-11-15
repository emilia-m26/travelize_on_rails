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
    
end
