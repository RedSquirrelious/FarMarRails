class Sale < ActiveRecord::Base
	belongs_to :product
	belongs_to :vendors
end
