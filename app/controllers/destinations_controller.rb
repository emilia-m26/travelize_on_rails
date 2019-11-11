class DestinationsController < ApplicationController


    def index
        #render :layout => 'passport'
        #using for passport page
         #will list a traveler's completed destinations
        if params[:id]
            @goal =Goal.find(params[:id])
            @destinations = @goal.destinations
        else
            @destinations = Destination.all
        end 
    end 

    def show
        # do nested route to show a destination details
    end 

    def new
    end 
    
    def create
    end 

    def edit
    end

    def update
    end 

    def destroy
    end

end
