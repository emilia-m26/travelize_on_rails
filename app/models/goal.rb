class Goal < ApplicationRecord
    has_many :destinations
    has_many :travelers, through: :destinations
    
    validates :name, presence: :true
    #validations runs on create, update, and save
end
