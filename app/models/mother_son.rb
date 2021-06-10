class MotherSon < ApplicationRecord
  paginates_per 1
  belongs_to :mother
  belongs_to :baby

    validates :mother, :baby, :presence => true
end
