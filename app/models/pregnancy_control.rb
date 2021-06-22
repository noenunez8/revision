class PregnancyControl < ApplicationRecord
  paginates_per 3
  belongs_to :mother
  validates :mother, :control_type, :control_date, :presence => true

end
