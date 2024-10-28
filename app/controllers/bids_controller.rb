class BidsController < ApplicationController
  def new
    if current_company_name
      @bid = Bid.new(company_name: current_company_name)
    else
      redirect_to new_session_path
    end
  end

  def create
    @bid = Bid.new(bid_params)

    if @bid.save
      redirect_to new_bid_path, notice: "Your bid has been submitted"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def bid_params
    params.require(:bid).permit(:company_name, :route, :load, :price)
  end
end
