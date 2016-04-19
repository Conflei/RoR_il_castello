class CreateCatalagos < ActiveRecord::Migration
  def change
    create_table :catalagos do |t|
      t.string :vehicle
      t.string :description
      t.string :photo

      t.timestamps null: false
    end
  end
end
