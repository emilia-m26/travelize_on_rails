class GoalsController < ApplicationController
    before_action :find_goal, only: [:show, :edit, :update, :destroy]

    def index
        @goals = Goal.all
    end

    def show
    end 

    def new
       @goal = Goal.new
    end 

    def create
        @goal = Goal.new(goal_params)
        #add validations
        if @goal.save
            redirect_to goal_path(@goal)
        else
            @errors = @goal.errors.full_messages #[2]
            render :new
            #add custom error message if goal not created
        end 
            
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
        params.require(:goal).permit(:name, :user_id, :destination_id)
    end 

    def find_goal
        @goal = Goal.find(params[:id])
    end 
    
end
