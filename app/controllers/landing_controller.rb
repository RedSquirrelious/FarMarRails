class LandingController < ApplicationController
  def index
  end

  def show_item_type
  	@products = Product.all

  	@types = []

  	@products.each do |product|
  		type = product.split(/\W+/)
  		@types << type[1]
  	end
  	
  	return @types
  end

  def rotate_quotes
    @quotes.sample
  end

  def rotate_celebrities
    celebrity = @celebrities.sample
    @celebrity_img = celebrity[0]
    @celebrity_name = celebrity[1]
    return @celebrity_img, @celebrity_name
  end
end
