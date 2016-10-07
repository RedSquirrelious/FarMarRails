class CreateRandomCelebritySightings < ActiveRecord::Migration
  def change
    create_table :random_celebrity_sightings do |t|
      t.string :name
      t.string :image_url

      t.timestamps null: false
    end
  end
end
