class CenterAttentionEmployee < ApplicationRecord
  paginates_per 3
  belongs_to :center_attention
  belongs_to :doctor
  belongs_to :speciality
  belongs_to :mother
  belongs_to :baby

  validates :center_attention, :doctor, :speciality, :mother, :baby, :presence => true

end
