class BidsController < ApplicationController
  def new
    if session[:company_name]
      @bid = Bid.new
    else
      # redirect_to new_session_path
    end
  end
end
