class AddOmniauthToTravelers < ActiveRecord::Migration[6.0]
  def change
    add_column :travelers, :provider, :string
    add_column :travelers, :uid, :string
  end
end
