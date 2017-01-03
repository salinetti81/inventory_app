class Employee < ActiveRecord::Base
  belongs_to :work_orders
  include PgSearch
  multisearchable :against => [:first_name, :last_name, :employee_id]
end
