class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :code
      t.string :name
      t.string :chi_name
      t.integer :parent_id

      t.timestamps
    end
  end
end
