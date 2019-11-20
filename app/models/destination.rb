class Destination < ApplicationRecord
     belongs_to :traveler
     belongs_to :goal

     validates_presence_of :location

     #helper method to use for travel inspiration page, when displaying travel experience for a specific user

     def travel_experience 
        #travel experience or specific traveler
         self.where(completed: true, traveler_id: traveler.id).count 
         #in console used Destination.where(completed:false, traveler_id:2).count
         #=> 1
     end  

       

end
