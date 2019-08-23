class CreateBoardgames < ActiveRecord::Migration[5.2]
  def change
    create_table :boardgames do |t|
      t.string :name
      t.string :image
      t.string :price
      t.text :description
      t.text :category, array: true, default: []
      t.text :mechanics, array: true, default: []
      t.float :user_rating

      t.timestamps
    end
  end
end
