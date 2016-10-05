class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all
  end

  def show_vendor
    @myvendor = Vendor.find(params[:id].to_i)
  end

  def new_product
  end

  def create_product
  end

  def show_product
  end

  def show_all_products
  end

  def update_product
  end

  def edit_product
  end

  def delete_product
  end

  def new_sale
  end

  def create_sale
  end

  def show_sale
  end

  def show_all_sales
  end

  def total_sales
  end
end
