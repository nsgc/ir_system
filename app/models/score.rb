class Score < ApplicationRecord
  belongs_to :user
  belongs_to :ranking

  validates_presence_of :score
end
