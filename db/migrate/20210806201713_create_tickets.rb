class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :name
      t.string :cpf
      t.string :email
      t.references :ship, foreign_key: true
      t.references :line_item,foreign_key: true
      t.timestamps
    end
  end
end
