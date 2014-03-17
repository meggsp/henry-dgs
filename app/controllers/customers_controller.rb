class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def new
    @customers = Customer.create
  end

  # GET /customers/1/edit
  def edit
  end

  def update
    respond_to do |format|
      if @customers.update()
        format.html { redirect_to @customers, notice: 'Quote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @customers.errors, status: :unprocessable_entity }
      end
    end
  end

end