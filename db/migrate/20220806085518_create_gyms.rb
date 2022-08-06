class CreateGyms < ActiveRecord::Migration[7.0]
  def change
    create_table :gyms do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
