class Destination < ApplicationRecord
     belongs_to :traveler
     belongs_to :goal

     validates_presence_of :location

     #helper method to use for travel inspiration page, when displaying travel experience for a specific user

     def travel_experience 
         self.where(completed: true).count   
     end  

       

end
