class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :name
      t.string :cpf
      t.string :phone_number
      t.references :line_item, foreign_key: true
      t.timestamps
    end
  end
end
