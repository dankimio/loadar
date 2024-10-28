class ResetsController < ApplicationController
  def create
    session[:company_name] = nil
    Bid.destroy_all

    redirect_to new_session_path, notice: "Data has been reset."
  end
end
