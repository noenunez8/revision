class CenterAttention < ApplicationRecord
  paginates_per 3
  belongs_to :direction
  has_many :center_attention_employees

  validates :direction, :name, :presence => true

end
