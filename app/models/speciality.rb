class Speciality < ApplicationRecord
  paginates_per 1
  has_many :doctors
  has_many :center_attention_employees
  validates :name, :presence => true
end
