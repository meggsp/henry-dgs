class DashboardController < ApplicationController
  def index
    @customer = Customer.find(:all, :order => "created_at")
  end
end
