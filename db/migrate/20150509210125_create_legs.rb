class CreateLegs < ActiveRecord::Migration
  def change
    create_table :legs do |t|
      t.integer :vacation_id
      t.string :starting_city
      t.string :ending_city
      t.string :starting_coordinate_one
      t.string :starting_coordinate_two
      t.string :ending_coordinate_one
      t.string :ending_coordinate_two
      t.timestamps null: false
    end
  end
end
