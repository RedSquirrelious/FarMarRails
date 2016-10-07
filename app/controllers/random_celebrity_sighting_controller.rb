class RandomCelebritySightingController < ApplicationController
  def index
  end

  def show
  	celebrity = CELEBRITY.sample
    @celebrity_img = celebrity[0]
    @celebrity_name = celebrity[1]
    
    return @celebrity_img, @celebrity_name
  end
end
