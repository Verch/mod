class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :small_image_url
      t.text :description_top
      t.text :description_bottom

      t.timestamps
    end
  end
end
