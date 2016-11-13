class WelcomeController < ApplicationController
  def index
    @recent_rankings = Ranking.order(created_at: :desc).limit(5)
  end
end
