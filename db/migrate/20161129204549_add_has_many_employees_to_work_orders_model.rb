class AddHasManyEmployeesToWorkOrdersModel < ActiveRecord::Migration
  def change
    add_reference :employees, :work_orders, index: true
  end
end
