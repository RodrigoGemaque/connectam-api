class CreateOwnerShips < ActiveRecord::Migration[6.1]
  def change
    create_table :owner_ships do |t|
      t.string :name

      t.timestamps
    end
  end
end
