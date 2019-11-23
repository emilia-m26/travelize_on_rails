class Destination < ApplicationRecord
     belongs_to :traveler
     belongs_to :goal

     validates_presence_of :location

     def self.travel_experience(traveler)
        #travel experience or specific traveler
         where(completed: true, traveler_id: traveler.id).count 
     end  

     # def self.passport(traveler)
     #      where(completed: true, traveler_id: traveler.id)
     #      #Destination.where(completed:true, traveler_id:1)
     # end

end
