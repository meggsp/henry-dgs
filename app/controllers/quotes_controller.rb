class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]
  autocomplete :customer, :company_name, :full => true

  before_filter :check_for_cancel, :only => [:create, :update]

  def check_for_cancel
    if params[:commit] == "Cancel"
      redirect_to quote_path
    end
  end
  
  # GET /quotes
  # GET /quotes.json
  def index
    @quote = Quote.all
    @quote = Quote.order(params[:sort])
    # Quote.where(created_at: (Time.now.midnight - 1.day)..Time.now.midnight)
  end
  
  #def timestamp
    #self[:timestamp] ||= Time.parse("#{self[:created_date].strftime("%Y-%m-%d")}")
    # @quote_by_date = @quote.group_by(&:created_at)
    # @date = params[:date] ? Date.parse(params[:date]) : Date.tomorrow
  #end  
  
  def edit
    @quote = Quote.find params[:id]
  end
  

  # GET /quotes/1
  # GET /quotes/1.json
  def show
  end

  # GET /quotes/new
  def new
    @quote = Quote.new
  end

  # POST /quotes
  # POST /quotes.json
  def create
    @quote = Quote.new(quote_params)

    respond_to do |format|
      if @quote.save
        format.html { redirect_to @quote, notice: 'Quote was successfully created.' }
        format.json { render action: 'show', status: :created, location: @quote }
      else
        format.html { render action: 'new' }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quotes/1
  # PATCH/PUT /quotes/1.json
  def update
    @quote = Quote.find(params[:id])
    @quote.update_attributes(quote_params)
    respond_to do |format|
      if @quote.save
        format.html { redirect_to @quote, notice: 'Quote was successfully created.' }
        format.json { render action: 'show', status: :created, location: @quote }
      else
        format.html { render action: 'new' }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quotes/1
  # DELETE /quotes/1.json
  def destroy
    @quote.destroy
    respond_to do |format|
      format.html { redirect_to quotes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quote_params
      params.require(:quote).permit(:company_name, :quote_information, :quote_amount, :quote_due_date, :artwork_due_date, :artwork_proof_link, :production_notes, :quote_status, :quote_link, :order_ship_date, :order_installation_date)
    end
end
