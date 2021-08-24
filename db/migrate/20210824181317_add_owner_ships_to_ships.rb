class AddOwnerShipsToShips < ActiveRecord::Migration[6.1]
  def change
    add_reference :ships, :owner_ship, null: false, foreign_key: true
  end
end
