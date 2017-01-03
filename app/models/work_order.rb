class WorkOrder < ActiveRecord::Base
  validates :room_name, presence: true
  validates :employee_name, presence: true
  has_many :users
  has_many :equipment
  include PgSearch
  multisearchable :against => [:room_name, :number, :date, :employee_name, :employee_id]
end
