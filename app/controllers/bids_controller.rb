class BidsController < ApplicationController
  def new
    if current_company
      # @bid = Bid.new
    else
      redirect_to new_session_path
    end
  end

  def create
    redirect_to new_bid_path, notice: "Your bid has been submitted"
  end
end
