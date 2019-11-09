class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :name
      t.integer :user_id
      t.integer :destination_id

      t.timestamps
    end
  end
end
