class ChangeDateFormatInMyTable2 < ActiveRecord::Migration
  def self.up
    change_column :quotes, :order_installation_date, :datetime
    change_column :quotes, :artwork_due_date, :datetime
    change_column :quotes, :artwork_proof_link, :text
  end

  def self.down
    change_column :quotes, :order_installation_date, :date
    change_column :quotes, :artwork_due_date, :date
    change_column :quotes, :artwork_proof_link, :date
  end
end