class Ranking < ApplicationRecord
  belongs_to :user
  belongs_to :game

  validates_presence_of :name
  validates_presence_of :started_at
  validates_presence_of :ended_at
end
