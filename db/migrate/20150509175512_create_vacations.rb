class CreateVacations < ActiveRecord::Migration
  def change
    create_table :vacations do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
