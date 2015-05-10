class CreateLegs < ActiveRecord::Migration
  def change
    create_table :legs do |t|
      t.integer :vacation_id
      t.string :starting_city
      t.string :starting_state
      t.string :ending_city
      t.string :ending_state
      t.string :starting_lat
      t.string :starting_lng
      t.string :ending_lat
      t.string :ending_lng
      t.timestamps null: false
    end
  end
end
