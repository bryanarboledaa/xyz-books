class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.integer :publisher_id
      t.string :title
      t.integer :isbn_10
      t.integer :isbn_13
      t.integer :price
      t.string :edition
      t.integer :publication_year

      t.timestamps
    end
  end
end
