class BidsController < ApplicationController
  def new
    if current_company
      # @bid = Bid.new
    else
      redirect_to new_session_path
    end
  end
end
