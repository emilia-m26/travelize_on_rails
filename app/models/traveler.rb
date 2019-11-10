class Traveler < ApplicationRecord
    has_many :destinations
    has_many :goals, through: :destinations

    has_secure_password
    validates_presence_of :name, :password, :password_confirmation
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    validates :email, uniqueness: true
end
