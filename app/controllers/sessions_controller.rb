class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    session[:company_name] = params[:company_name]
    redirect_to new_bid_path
  end
end
