class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :quote_information
      t.decimal :quote_amount
      t.date :quote_due_date
      t.date :artwork_due_date
      t.date :artwork_proof_link
      t.text :production_notes
      t.string :quote_status
      t.string :quote_link
      t.date :order_ship_date
      t.date :order_installation_date

      t.timestamps
    end
  end
end
