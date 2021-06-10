class Baby < ApplicationRecord
  paginates_per 1
  has_many :center_attention_employees
  has_many :mother_sons

  validates :first_name, :last_name, :weight, :presence => true

  def full_name
    first_name + " " + last_name
  end
end
