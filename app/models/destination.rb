class Destination < ApplicationRecord
     belongs_to :traveler
     belongs_to :goal

     validates_presence_of :location

     def travel_date #helper method to use later for passport page, to display date traveled info
         self.date_traveled.strftime("%b %Y") 
     end  

end
