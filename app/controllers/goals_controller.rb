class GoalsController < ApplicationController
    before_action :find_goal, only: [:show, :edit, :update, :destroy]

    def index
        #if traveler_signed_in?
        @traveler = current_traveler
        @goals = Goal.all
        #byebug
        # else 
        #     redirect_to new_traveler_session_path
        # end 
    end

    def new
        @goal = Goal.new
        8.times{@goal.destinations.build(traveler:current_traveler)} #getting destination_id and traveler_id automatically    
    end 

    def create
        #byebug
        @goal = Goal.new(goal_params)
        #add validations
        if @goal.save
            redirect_to goal_path(@goal)
        else
            @errors = @goal.errors.full_messages #[2]
            #flash[:error]
            render :new
            #add custom error message if goal not created
        end 
            
    end

    def show
        
    end 


    def edit
    end

    def update
        @goal.update(goal_params)
        #add validations
        redirect_to goal_path(@goal)
    end 

    def destroy
        @goal.destroy
        #add validations
        redirect_to goals_path
    end 

    private 

    def goal_params #defining strong params
        params.require(:goal).permit(:name, destinations_attributes:[:id, :location, :description, :date_traveled, :completed, :traveler_id, :goal_id])
    end 

    def find_goal
        @goal = Goal.find(params[:id])
    end 
    
end
