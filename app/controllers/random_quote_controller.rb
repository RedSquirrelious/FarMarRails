class RandomQuoteController < ApplicationController
  def index
  end

  def show
  	QUOTES.sample
  end
end
