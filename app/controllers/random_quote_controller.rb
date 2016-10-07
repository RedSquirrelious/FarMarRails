class RandomQuoteController < ApplicationController
  def index
  end

  def show
  	
  end

    def rotate_image
    celebrity = CELEBRITY.all.sample
    @celebrity_image = celebrity.image_url
    @celebrity_name = celebrity.name
    return @celebrity_image, @celebrity_name
  	end

  def rotate_quote
    @quote = QUOTE.all.sample.quote
  end
end
