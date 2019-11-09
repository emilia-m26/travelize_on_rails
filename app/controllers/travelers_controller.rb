class TravelersController < ApplicationController

    def index
        @travelers = Traveler.all
        #using for travel inspiration page
        #where all travelers will be listed
    end 

    def show
        redirect_to goals_path
    end

    #responsible for login, logout, signup, and index all users
    def new #show signup form
       @traveler = Traveler.new
    end 

    def create #create new account
        @traveler = Traveler.new(traveler_params)
        @traveler.save
        if @traveler.save
          session[:traveler_id] = @traveler.id
          redirect_to goals_path
        else
          flash[:error] = "Something went wrong. Please try again!"
          render :new
        end
    end 

    private

    def traveler_params
        params.require(:traveler).permit(:username, :name, :email, :password, :password_confirmation)
    end 
    

end
