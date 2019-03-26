class StatisticsController < ApplicationController
  def index
    @statistics = Statistic.all
  end

  def new
    @statistic = Statistic.new
  end

  def show
    @statistic = Statistic.find(params[:id])
  end

  def create
    @statistic = Statistic.new(statistic_params)
    @statistic.save
    redirect_to @statistic
  end

  def edit
    @statistic = Statistic.find(params[:id])
  end

  def update
    @statistic = Statistic.find(params[:id])
    @statistic.update(statistic_params)
    redirect_to @statistic
  end

  private

  def statistic_params
    params.require(:statistic).permit(:player_id,:game_id,:points,:rebounds,:assists,:steals,:blocks,:turnovers)
  end

end
