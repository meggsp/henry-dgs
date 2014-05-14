class ChangeDateFormatInQuotes < ActiveRecord::Migration
  
    def self.up
    change_column :quotes, :artwork_due_date, :date
    change_column :quotes, :order_installation_date, :date
    change_column :quotes, :created_at, :date
    change_column :quotes, :updated_at, :date
  end

  def self.down
    change_column :quotes, :artwork_due_date, :datetime
    change_column :quotes, :order_installation_date, :datetime
    change_column :quotes, :created_at, :datetime
    change_column :quotes, :updated_at, :datetime
  end
  
end
