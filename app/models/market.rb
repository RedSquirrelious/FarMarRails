class Market < ActiveRecord::Base
  has_many :market_vendor_clean
  has_many :vendors, :through => :market_vendor_clean 
end
