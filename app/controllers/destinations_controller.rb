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
        if params[:id]
            @goal = Goal.find(params[:id])
            @destination = @goal.destinations.build
        else
        @destination = Destination.new
        end
    end 
    
    def create
        Destination.create(destination_params)
        #need to figure out redirect
        #redirect_to "/goals/:id"
    end 

    def edit
    end

    def update
    end 

    def destroy
    end

    private
    def destination_params
        params.require(:destination).permit(:location, :description, :date_traveled, :completed, :traveler_id, :goal_id)
  
    end 

end
