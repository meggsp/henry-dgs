class CustomerQuote < ActiveRecord::Base
  belongs_to :customers
  belongs_to :quote

end