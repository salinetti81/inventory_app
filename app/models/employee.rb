class Employee < ActiveRecord::Base
  belongs_to :work_orders
end
