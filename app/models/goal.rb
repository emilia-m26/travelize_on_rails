class Goal < ApplicationRecord
    belongs_to :traveler
    belongs_to :destination
    
    validates :name, presence: :true
    #validations runs on create, update, and save
end
