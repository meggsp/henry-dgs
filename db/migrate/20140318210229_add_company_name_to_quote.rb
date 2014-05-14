class AddCompanyNameToQuote < ActiveRecord::Migration
  def change
    add_column :quotes, :company_name, :string
  end
end
