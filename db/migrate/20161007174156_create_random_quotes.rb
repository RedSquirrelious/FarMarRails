class CreateRandomQuotes < ActiveRecord::Migration
  def change
    create_table :random_quotes do |t|
      t.string :quote

      t.timestamps null: false
    end
  end
end
