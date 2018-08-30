class CreateKittens < ActiveRecord::Migration[5.2]
  def change
    create_table :kittens do |t|
      t.string :race
      t.string :color
      t.text :description
      t.string :condition
      t.string :finish
      t.string :title
      t.decimal :price

      t.timestamps
    end
  end
end
