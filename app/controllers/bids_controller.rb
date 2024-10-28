class BidsController < ApplicationController
  def new
    if current_company_name
      @bid = Bid.new(company_name: current_company_name)
    else
      redirect_to new_session_path
    end
  end

  def create
    redirect_to new_bid_path, notice: "Your bid has been submitted"
  end
end
