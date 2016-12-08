class WorkOrder < ActiveRecord::Base
  validates :room_name, presence: true
  validates :date, presence: true
  validates :employee_name, presence: true
  # has_and_belongs_to_many :users
  has_one :employee
  has_many :equipment
end
