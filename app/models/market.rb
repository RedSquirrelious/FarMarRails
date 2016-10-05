class Market < ActiveRecord::Base
  has_many :market_vendors_clean
  has_many :vendors, :through => :market_vendors_clean
end
