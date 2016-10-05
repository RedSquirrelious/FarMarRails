class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all
  end

  def show_vendor
    @myvendor = Vendor.find(params[:id].to_i)
  end

  def new_product
    @myproduct = Product.new
    @product_creation_method = "post"
    @post_method = :post
    @post_path = product_create_path
  end

  def create_product
    @params = params
    @myproduct = Product.new
    @product_name = params[:name]
    @myproduct.save
    redirect_to show_vendor
  end

  def find_product
    return Product.find(params[:id].to_i)
  end

  def show_product
    @myproduct = find_product
  end

  def show_all_products
    @products = @myvendor.products
    return @products
  end

  def update_product
    if @myproduct == nil
          render :file => 'public/404.html',
              :status => :not_found
    end

    @product_name = params[:name]
    @myproduct.save
    redirect_to show_vendor
  end

  def edit_product
    @myproduct = find_product
    @product_creation_method = "post"
    @product_method = :put
    @post_path = products_update_path(@myproduct.id)
    
    if @myproduct == nil
          render :file => 'public/404.html',
              :status => :not_found
    end
  end

  def destroy_product
    @myproduct = find_product
     
    if @myproduct != nil
        @myproduct.destroy
        redirect_to show_vendor
    end
  end

  def new_sale
    @mysale = Sale.new
  end

  def create_sale
    @params = params
    @mysale = Sale.new
    @sale_date = params[:purchase_date]
    @sale_product_name = params[:product_name]
    @sale_amount = params[:amount]
    @mysale.save
    redirect_to show_vendor
  end

  def find_sale
    return Sale.find(params[:id])
  end 

  def show_sale
    @mysale = find_sale
  end

  def show_all_sales
    @sales = @myvendor.sales
  end

  def total_sales
  end
end
