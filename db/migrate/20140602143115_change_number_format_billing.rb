class ChangeNumberFormatBilling < ActiveRecord::Migration
  def change
    change_column :customers, :primary_contact_phone, :string
    change_column :customers, :billing_contact_phone, :string
  end
end
