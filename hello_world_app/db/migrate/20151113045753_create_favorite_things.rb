class CreateFavoriteThings < ActiveRecord::Migration
  def change
    create_table :favorite_things do |t|
      t.string :name
    end
  end
end
