class Province < ApplicationRecord
  paginates_per 1
  belongs_to :country
  has_many :locations
  validates :country, :name, :presence => true
end
