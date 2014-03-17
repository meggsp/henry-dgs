class Customer < ActiveRecord::Base
  has_many :quotes
end
