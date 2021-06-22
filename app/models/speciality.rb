class Speciality < ApplicationRecord
  paginates_per 3
  has_many :doctors
  has_many :center_attention_employees
  validates :name, :presence => true
end
