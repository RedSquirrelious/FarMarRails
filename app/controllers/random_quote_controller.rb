class RandomQuoteController < ApplicationController
  def index
  end

  def show
  	
  end

    def rotate_image
    celebrity = RandomCelebritySighting.all.sample
    @celebrity_image = celebrity.image_url
    @celebrity_name = celebrity.name
    return @celebrity_image, @celebrity_name
  	end

  def rotate_quote
    @quote = RandomQuote.all.sample.quote
  end
end
