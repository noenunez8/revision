class Doctor < ApplicationRecord
  paginates_per 3

  belongs_to :speciality
  belongs_to :direction
  has_many :center_attention_employees
  validates :direction, :speciality, :first_name, :last_name, :presence => true

  def full_name
    first_name + " " + last_name
  end


end
