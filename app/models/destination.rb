class Destination < ApplicationRecord
     #belongs_to :traveler
     belongs_to :goal

     validates_presence_of :location

end
