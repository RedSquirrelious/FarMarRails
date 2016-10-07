class AddForeignKey < ActiveRecord::Migration
  def change
    add_foreign_key :market_vendor_cleans, :markets, column: :market_id
    add_foreign_key :market_vendor_cleans, :vendors, column: :vendor_id
  end
end
