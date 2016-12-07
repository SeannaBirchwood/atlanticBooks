class AddandRemoveColumnsFromBookstores < ActiveRecord::Migration[5.0]
  change_table :users do |t|
    t.remove :location
    t.string :city
    t.string :province
    t.string :image
    t.text :description
  end
end
