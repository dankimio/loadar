class SessionsController < ApplicationController
  def new
    if current_company
      redirect_to new_bid_path
      return
    end

    render :new
  end
end
