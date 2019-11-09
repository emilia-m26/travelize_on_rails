class GoalsController < ApplicationController

    def index
        @goals = Goal.all
    end

    def show
        @goal = Goal.find(params[:id])
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

    private 

    def goal_params #defining strong params
        params.require(:goal).permit(:name, :user_id, :destination_id)
    end 
    
end
