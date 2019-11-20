class Traveler < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable

    has_many :destinations
    has_many :goals, through: :destinations

    # has_secure_password
    validates_presence_of :name, uniqueness: true
    validates :username, presence: :true, uniqueness: { case_sensitive: false }
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    validates :email, uniqueness: true

    def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |traveler|
        traveler.provider = auth.provider
        traveler.name = auth.info.name
        traveler.uid = auth.uid 
        traveler.username = auth.info.nickname
        traveler.email = auth.info.email
        traveler.password = Devise.friendly_token[0,20]
      end 
    end

end
