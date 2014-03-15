class CustomerQuote < ActiveRecord::Base
  belongs_to :customer
  belongs_to :quote

end