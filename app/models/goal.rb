class Goal < ApplicationRecord
    has_many :destinations, :dependent => :destroy #makes sure to delete goal AND destinations
    has_many :travelers, through: :destinations 
    accepts_nested_attributes_for :destinations, reject_if: proc {|attributes| attributes["location"].blank?}
    #all_blank works if no checkbox
    #field_for checks for the above macro to see if it is present
    #before creating more than one field for destinations
    
    validates :name, presence: :true
    #validations runs on create, update, and save
end
