class BidsController < ApplicationController
  def new
    if current_company_name
      @bid = Bid.new(bid_params)
      @job = @bid.job

      render :new, status: :see_other
    else
      redirect_to new_session_path
    end
  end

  def create
    @bid = find_bid
    @job = @bid.job

    if @bid.save
      redirect_to new_bid_path(bid: { route: @bid.route, load: @bid.load }),
        notice: "Your bid has been submitted"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def bid_params
    params.fetch(:bid, {}).permit(:route, :load).merge(company_name: current_company_name)
  end

  def find_bid
    bid = Bid.find_by(bid_params) || Bid.new(bid_params)
    bid.price = params.dig(:bid, :price) if params.dig(:bid, :price)
    bid
  end
end
