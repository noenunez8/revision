class Country < ApplicationRecord
  paginates_per 3
  validates :name, :presence => true, :uniqueness => true
  has_many :provinces
end
