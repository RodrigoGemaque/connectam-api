class CreateShips < ActiveRecord::Migration[6.1]
  def change
    create_table :ships do |t|
      t.string :name
      t.references :owner_ship, null: false, foreign_key: true

      t.timestamps
    end
  end
end
