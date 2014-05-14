class Quote < ActiveRecord::Base
belongs_to :customers
  validates :company_name, :presence => true
  validates :quote_information, :presence => true
  
  #def company_name
    #customers.try(:company_name)
  #end
  
  #def company_name=(company_name)
    #self.customers = Customer.find_by_company_name(company_name) if company_name.present?
  #end
  
end
