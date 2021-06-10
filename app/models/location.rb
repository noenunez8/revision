class Location < ApplicationRecord
  paginates_per 1
  belongs_to :province
  has_many:directions
    validates :province, :name, :presence => true
end
