class Vendor < ActiveRecord::Base
  has_many :market_vendors
  has_many :markets, :through => :vendors
end
