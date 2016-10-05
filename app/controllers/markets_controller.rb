class MarketsController < ApplicationController
  def findMarket
    return Market.find(params[:id].to_i)
  end

  def findVendor
    return Vendor.find(params[:id].to_i)
  end

  def index
    @markets = Market.all
  end

  def show
    @mymarket = findMarket
    @market_vendors = @mymarket.vendors
  end

  def new
    @mymarket = Market.new
    @post_method = :post
    @post_path = create_path
  end

  def create
    @params = params
    @mymarket = Market.new
    @mymarket.name = params[:market][:name]
    @mymarket.street = params[:market][:street]
    @mymarket.city = params[:market][:city]
    @mymarket.county = params[:market][:county]
    @mymarket.state = params[:market][:state]
    @mymarket.zip = params[:market][:zip]

    if @mymarket.save
      redirect_to root_path
    else
      @error = "Did not save successfully. Try again. \nAll fields must be filled and address must be unique!"
      @post_method = :post
      @post_path = create_path
      render :new
    end
  end

  def edit
    @mymarket = findMarket
    @post_method = :put
    @post_path = update_path
  end

  def update
    @params = params
    @mymarket = findMarket
    if @mymarket == nil
        render :file => 'public/404.html',
            :status => :not_found
    end
    @mymarket.name = params[:market]["name"]
    @mymarket.street = params[:market]["street"]
    @mymarket.city = params[:market]["city"]
    @mymarket.county = params[:market]["county"]
    @mymarket.state = params[:market]["state"]
    @mymarket.zip = params[:market]["zip"]

    # @mymarket.save!
    if @mymarket.save
      redirect_to root_path
    else
      @error = "Did not save successfully. Try again."
      @post_method = :put
      @post_path = update_path
      render :edit
    end
  end

  def destroy
    @mymarket = findMarket
    if @mymarket != nil
      @mymarket.destroy
      redirect_to root_path
    end
  end

  def vendor_index
  end

  def vendor_show
    @myvendor = findVendor
    @vendor_products = @myvendor.products
  end

  def vendor_new
  end

  def vendor_create
  end

  def vendor_edit
  end

  def vendor_update
  end

  def vendor_destroy
  end
end
