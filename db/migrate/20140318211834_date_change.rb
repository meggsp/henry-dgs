class DateChange < ActiveRecord::Migration
  def change
    change_table :quotes do |t|  
    t.change :quote_due_date, :datetime 
    t.change :order_ship_date, :datetime 
    end
  end
end
