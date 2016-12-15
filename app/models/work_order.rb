class WorkOrder < ActiveRecord::Base
  validates :room_name, presence: true
  validates :employee_name, presence: true
  has_many :users
  has_many :equipment

  # search
  def self.search(search)
    where("room_name ILIKE ? OR employee_name ILIKE ?", "%#{search}%",  "%#{search}%") 
  end

end
