class Quote < ActiveRecord::Base

belongs_to :customers
accepts_nested_attributes_for :customers

end
