class WorkOrder < ActiveRecord::Base
  # include PgSearch
  validates :room_name, presence: true
  validates :employee_name, presence: true
  has_many :users
  has_many :equipment


def self.search(search)
  where("room_name ILIKE ? OR notes ILIKE ? OR employee_name ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
  # where("notes LIKE ?", "%#{search}%")
  # where("number LIKE ?", "%#{search}%")
  # where("date LIKE ?", "%#{search}%")
  # where("employee_name LIKE ?", "%#{search}%")
end
  
  
  # scope :sorted, ->{ order(room_name: :asc) }

  # pg_search_scope :search,
  #                 against: [
  #                   :room_name,
  #                   :number,
  #                   :date,
  #                   :employee_name,
  #                   :employee_id,
  #                   :equipment
  #                 ],
  #                 using: {
  #                   tsearch: {
  #                     prefix: true,
  #                     normalization: 2
  #                   }
  #                 }

  # def self.perform_search(keyword)
  #   if keyword.present?
  #   then WorkOrder.search(keyword)
  #   else WorkOrder.all
  #   end.sorted
  # end

end
