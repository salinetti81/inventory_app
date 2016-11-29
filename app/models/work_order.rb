class WorkOrder < ActiveRecord::Base
  has_many :employees
  has_many :equipment
end
