class GoalsController < ApplicationController
    #before_action :find_goal, only: [:show, :edit, :update, :destroy]

    def index
        @goals = Goal.all
    end

    def show
    end 

    def new
       @goal = Goal.new
    end 

    def create
        @goal = Goal.create(goal_params)
    end

    def edit
    end

    def update
        @goal.update(goal_params)
    end 

    def destroy
        @goal.destroy
    end 

    private 

    def goal_params #defining strong params
        params.require(:goal).permit(:name, :user_id, :destination_id)
    end 

    def find_goal
        @goal = Goal.find(params[:id])
    end 
    
end