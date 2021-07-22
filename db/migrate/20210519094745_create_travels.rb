class CreateTravels < ActiveRecord::Migration[6.1]
  def change
    create_table :travels do |t|
      t.date :date
      t.time :hour
      t.float :price
      t.references :ship, null: false, foreign_key: true
      t.references :route, null: false, foreign_key: true
     
      t.timestamps
    end
  end
end
