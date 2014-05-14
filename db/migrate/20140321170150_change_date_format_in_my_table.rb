class ChangeDateFormatInMyTable < ActiveRecord::Migration
  def self.up
    change_column :quotes, :quote_due_date, :datetime
  end

  def self.down
    change_column :quotes, :quote_due_date, :date
  end
end
