class BidsController < ApplicationController
  def new
    if current_company_name
      @bid = Bid.new(company_name: current_company_name, route: params[:route], load: params[:load])
      @job = @bid.job
    else
      redirect_to new_session_path
    end
  end

  def create
    @bid = find_bid
    @job = @bid.job

    if @bid.save
      redirect_to new_bid_path(route: @bid.route, load: @bid.load), notice: "Your bid has been submitted"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def bid_params
    params.require(:bid).permit(:company_name, :route, :load, :price)
  end

  def find_bid
    bid = Bid.find_by(company_name: current_company_name, route: bid_params[:route], load: bid_params[:load])
    bid.price = bid_params[:price] if bid
    bid || Bid.new(bid_params)
  end
end
