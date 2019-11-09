class Goal < ApplicationRecord
    validates :name, presence: :true
    #validate runs on create, update, and save
end
