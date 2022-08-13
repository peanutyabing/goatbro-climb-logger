class Route < ApplicationRecord
  belongs_to :gym
  has_many :reviews

  validates :grade, presence: true
  validates :color, presence: true
  validates :discipline, presence: true

  enum :discipline, %i[
    bouldering
    lead
    top_rope
  ]
end
