class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :name
      t.integer :id_number
      t.string :condition
      t.boolean :checked_out
      t.string :location
      t.date :date_signed_out
      t.string :notes
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
