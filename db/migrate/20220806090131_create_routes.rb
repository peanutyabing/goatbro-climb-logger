class CreateRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :routes do |t|
      t.references :gym, index: true, foreign_key: true, null: false

      t.string :grade, null: false
      t.string :color, null: false
      t.string :name
      t.integer :discipline, null: false
      t.string :lane
      t.date :set_on
      t.date :retired_on

      t.timestamps null: false
    end
  end
end
