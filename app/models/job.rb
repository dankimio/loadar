class Job
  def initialize(route, load)
    @route = route
    @load = load
  end

  def lowest_bid
    Bid.where(route: @route, load: @load).order(:price).first
  end
end
