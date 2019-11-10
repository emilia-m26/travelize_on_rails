class Goal < ApplicationRecord
    has_many :destinations
    has_many :travelers, through: :destinations
    accepts_nested_attributes_for :destinations
    #field_for checks for the above macro to see if it is present
    #before creating more than one field for destinations
    
    validates :name, presence: :true
    #validations runs on create, update, and save
end
