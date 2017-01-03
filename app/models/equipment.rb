class Equipment < ActiveRecord::Base
  belongs_to :work_orders
  include PgSearch
  multisearchable :against => [:name, :id_number, :date_signed_out]
end
