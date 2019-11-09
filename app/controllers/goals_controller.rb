class GoalsController < ApplicationController

    def index
        @goals = Goal.all
    end

    def show
        @goal = Goal.find(params[:id])
    end 

    def new
        @goal = Goal.new
    end 

    def create
        @goal = Goal.create(goal_params)
    end

    def edit
        @goal = Goal.find(params[:id])
    end

    def update
        @goal = Goal.find(params[:id])
        @goal.update(goal_params)
    end 

    def destroy
        @goal = Goal.find(params[:id])
        @goal.destroy
    end 

    private 

    def goal_params #defining strong params
        params.require(:goal).permit(:name, :user_id, :destination_id)
    end 
    
end
