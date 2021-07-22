class CreateRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :routes do |t|
      t.string :departure
      t.string :arrival
      t.references :harbor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
