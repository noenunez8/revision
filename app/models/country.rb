class Country < ApplicationRecord
  paginates_per 1
  validates :name, :presence => true, :uniqueness => true
  has_many :provinces
end
