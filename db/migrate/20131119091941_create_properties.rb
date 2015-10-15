class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.string :image_url
      t.string :beds
      t.string :baths
      t.string :house_Size
      t.string :lot_Size
      t.string :year_built
      t.string :price
      t.string :style
      t.string :property_type

      t.timestamps
    end
  end
end
