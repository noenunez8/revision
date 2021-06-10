class CenterAttention < ApplicationRecord
  paginates_per 1
  belongs_to :direction
  has_many :center_attention_employees

  validates :direction, :center_attention_employees, :name, :presence => true

end
