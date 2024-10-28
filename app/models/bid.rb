class Bid < ApplicationRecord
  validates :company_name, presence: true, uniqueness: { scope: [ :route, :load ] }
  validates :route, presence: true
  validates :load, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
