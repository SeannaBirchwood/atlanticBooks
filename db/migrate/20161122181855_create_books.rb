class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.date :publish_date
      t.string :genre
      t.string :publisher
      t.integer :rating
    end
  end
end
