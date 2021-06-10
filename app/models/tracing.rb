class Tracing < ApplicationRecord
  paginates_per 1
  belongs_to :mother
  belongs_to :baby

  validates :mother, :baby, :date_of_visit, :mother_is_health, :son_is_health, :presence => true
end
