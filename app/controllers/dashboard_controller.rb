class DashboardController < ApplicationController
  def index
    @quote = Quote.all
  end

  def pending
    @quote_by_date = @quote.group_by(&:created_at)
    @date = params[:date] ? Date.parse(params[:date]) : Date.tomorrow
  end

  def tobeshipped
    @quote_by_date = @quote.group_by(&:created_at)
    @date = params[:date] ? Date.parse(params[:date]) : Date.yesterday
  end
end
