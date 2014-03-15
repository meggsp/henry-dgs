class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.text :company_name
      t.text :primary_contact_name
      t.integer :primary_contact_phone
      t.string :primary_contact_email
      t.text :primary_contact_address_city_state_zip
      t.text :billing_contact_name
      t.integer :billing_contact_phone
      t.string :billing_contact_email
      t.string :billing_contact_address_city_state_zip
      t.string :install_contact_name
      t.string :company_division_sub
      t.boolean :customer_state

      t.timestamps
    end
  end
end
