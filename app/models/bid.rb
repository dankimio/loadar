class Bid < ApplicationRecord
  ROUTES = {
    "berlin-warsaw" => [ "Berlin", "Warsaw" ],
    "belfast-cardiff" => [ "Belfast", "Cardiff" ],
    "prague-brussels" => [ "Prague", "Brussels" ],
    "amsterdam-cologne" => [ "Amsterdam", "Cologne" ]
  }

  validates :company_name, presence: true, uniqueness: { scope: [ :route, :load ] }
  validates :route, presence: true, inclusion: { in: ROUTES.keys }
  validates :load, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
