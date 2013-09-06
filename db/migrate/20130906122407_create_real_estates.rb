class CreateRealEstates < ActiveRecord::Migration
  def change
    create_table :real_estates do |t|
      t.string :name
      t.string :location
      t.string :seller
      t.decimal :size
      t.decimal :price
      t.string :image_path

      t.timestamps
    end
  end
end
