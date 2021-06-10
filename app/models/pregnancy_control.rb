class PregnancyControl < ApplicationRecord
  paginates_per 1
  belongs_to :mother
    validates :mother, :presence => true

end
