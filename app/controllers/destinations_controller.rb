class DestinationsController < ApplicationController


    def index
        if params[:id]
            @goal =Goal.find(params[:id])
            @destinations = @goal.destinations
        else
            #@destinations = Destination.all
            redirect_to '/goals'
        end 
    end 

    def show
        @destination = Destination.find(params[:id])
        if params[:goal_id]
            @goal = Goal.find(params[:goal_id])
            if @destination.goal_id != @goal.id
                redirect_to '/goals'
            end
        end 

    end 

    def new
        if params[:goal_id]
            @goal = Goal.find(params[:goal_id])
            @destination = @goal.destinations.build
            redirect_to '/goals/:id/destination'
        else
            @destination = Destination.new
        end
    end 
    
    def create
        Destination.create(destination_params)
        #need to figure out redirect
        redirect_to "/goals/:id"
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
