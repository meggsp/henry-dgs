class DashboardController < ApplicationController

  def index
    # @quote = Quote.all
    @quote = Quote.all
    
    # HERE <----    
    # @yesterday_quotes = Quote.where(created_at: (Time.now.midnight - 1.day)) # Load yesterday's quotes here
    @to_be_shipped = Quote.where(order_ship_date: (Time.now.midnight.strftime('%Y-%m-%d'))) # Load today's quotes here
    @quotes_due  = Quote.where(quote_due_date: (Time.now.midnight.strftime('%Y-%m-%d'))) # Load tomorrow's quotes here
  end
  
end
