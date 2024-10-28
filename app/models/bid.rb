class Bid < ApplicationRecord
  ROUTES = {
    "berlin-warsaw" => [ "Berlin", "Warsaw" ],
    "belfast-cardiff" => [ "Belfast", "Cardiff" ],
    "prague-brussels" => [ "Prague", "Brussels" ],
    "amsterdam-cologne" => [ "Amsterdam", "Cologne" ]
  }

  LOADS = [ 5, 10, 26 ]

  validates :company_name, presence: true, uniqueness: { scope: [ :route, :load ] }
  validates :route, presence: true, inclusion: { in: ROUTES.keys }
  validates :load, presence: true, inclusion: { in: LOADS }
  validates :price, presence: true, numericality: { greater_than: 0 }

  def job
    Job.new(route, load) if route && load
  end

  def current_bid
    Bid.find_by(route: route, load: load)
  end
end
