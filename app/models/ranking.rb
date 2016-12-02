class Ranking < ApplicationRecord
  belongs_to :user

  validates_presence_of :name
  validates_presence_of :started_at
  validates_presence_of :ended_at

  has_many :scores
  has_many :players, through: :scores, source: :user
end
