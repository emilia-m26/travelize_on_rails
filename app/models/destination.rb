class Destination < ApplicationRecord
     belongs_to :traveler
     belongs_to :goal

     validates_presence_of :location

     #helper method to use for travel inspiration page, when displaying travel experience for a specific user

     def self.travel_experience(traveler)
        #travel experience or specific traveler
         where(completed: true, traveler_id: traveler.id).count 
         #in console used Destination.where(completed:true, traveler_id:2).count
         #=> 1
     end  

     def self.passport(traveler)
          where(completed: true, traveler_id: traveler.id)
          #Destination.where(completed:true, traveler_id:2)
     end

       

end
