class MotherSon < ApplicationRecord
  paginates_per 3
  belongs_to :mother
  belongs_to :baby

  validates :mother, :baby, :presence => true
end
