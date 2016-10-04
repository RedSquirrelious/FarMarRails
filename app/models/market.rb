class Market < ActiveRecord::Base
  has_many :market_vendors
  has_many :vendors, :through => :market_vendors
end
