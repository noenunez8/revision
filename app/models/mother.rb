class Mother < ApplicationRecord
  paginates_per 3
  belongs_to :direction
  has_many :pregnancy_controls
  has_many :mother_sons

  validates :first_name, :last_name, :dni_number, :direction, :presence => true

  def full_name
    first_name + " " + last_name
  end

end
