class DashboardController < ApplicationController
  def index

    Customer.order(created_at: :desc)

  end
end
