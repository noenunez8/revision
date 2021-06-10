class Direction < ApplicationRecord
  paginates_per 1
  belongs_to :location
  has_many :center_attentions
  has_many :doctors
  has_many :mothers

  validates :location, :center_attentions, :street, :number, :presence => true
  def full_dir
    street + " " + number
  end
end
