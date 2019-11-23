class DestinationsController < ApplicationController
    before_action :set_goal, only: [:index, :new, :create, :show]

    def index
        if @goal.travelers.first == current_traveler
            @goal = Goal.find_by(id:params[:goal_id])
            @destinations = @goal.destinations
        else
            flash[:alert] = "You are not authorized to view that page."
             redirect_to goals_path
        end
    end 

    def new
        if @goal.travelers.first == current_traveler
            @goal = Goal.find_by(id:params[:goal_id])
            @destination = @goal.destinations.build
        else
            flash[:alert] = "You are not authorized to view that page."
             redirect_to goals_path
        end
    end 
    
    def create
        @destination = current_traveler.destinations.build(destination_params)
        if @destination.save
            redirect_to goal_destinations_path(@goal)
        else
            redirect_to goals_path, notice: 'Destination was not added!'
        end
    end 

    def show
        @destination = Destination.find_by(id:params[:id])
        if @destination.traveler != current_traveler
            flash[:alert] = "You are not authorized to view that page."
            redirect_to goals_path
        else
            @goal = Goal.find_by(id:params[:goal_id]) 
        end
    end 

    # def edit
    # end

    # def update
    # end 

    # def destroy
    # end

    private
    def destination_params
        params.require(:destination).permit(:location, :description, :date_traveled, :completed, :traveler_id, :goal_id)
    end 

    def set_goal
        @goal = Goal.find_by(id:params[:goal_id])
    end 

end
