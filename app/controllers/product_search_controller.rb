class ProductSearchController < ApplicationController
  def index
  end

  def show
  	# @products = Product.all

  	# @types = []

  	# @products.each do |product|
  	# 	type = product.name.to_s.split(/\W+/)
  	# 	unless type[1] == nil
  	# 		@types << type[1]
  	# 	end
  	# end
  	# 	@types = @types.uniq
  	# return @types
  	# raise

  	veggie_search
  end

  def define_type(name)
  	Product.where("name like ?", "%#{name}%")
  end

  def veggie_search
  	vegetables = ['beets', 'greens', 'mushrooms', 'carrots']

  	veggie_array = vegetables.map do |v|
  		define_type(v)
  	end.flatten

  	@veggie_search = Market.joins(:vendors).merge(Vendor.joins(:products).merge(Product.where(id: veggie_array.map(&:id)))).distinct
  
  	# raise

  end


end


