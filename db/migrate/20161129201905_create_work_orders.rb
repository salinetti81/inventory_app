class CreateWorkOrders < ActiveRecord::Migration
  def change
    create_table :work_orders do |t|
      t.string :room_name
      t.integer :number
      t.date :date
      t.integer :employee_id
      t.string :employee_name
      t.string :notes

      t.timestamps null: false
    end
  end
end
