class Vendor < ActiveRecord::Base
  has_many :market_vendors_clean
  has_many :markets, :through => :market_vendors_clean
end
