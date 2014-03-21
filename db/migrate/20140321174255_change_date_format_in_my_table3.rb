class ChangeDateFormatInMyTable3 < ActiveRecord::Migration
    def self.up
    change_column :quotes, :quote_due_date, :date
    change_column :quotes, :order_ship_date, :date
  end

  def self.down
    change_column :quotes, :quote_due_date, :datetime
    change_column :quotes, :order_ship_date, :datetime
  end
end
