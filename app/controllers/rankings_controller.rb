class RankingsController < ApplicationController
  def new
    @ranking = Ranking.new
  end

  def create
    @ranking = Ranking.new(required_params)
    @ranking.user = current_user
    logger.debug(@ranking.errors.inspect) unless @ranking.valid?
    if @ranking.save
      redirect_to current_user
    else
      render :new
    end
  end

  private

  def required_params
    params.require(:ranking).permit(:name, :started_at, :ended_at)
  end
end
