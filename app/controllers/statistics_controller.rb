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
    if @statistic.valid?
      @statistic.save
      redirect_to game_path(statistic_params[:game_id])
    else
      render :new
    end
  end

  def edit
    @statistic = Statistic.find(params[:id])
  end

  def update
    @statistic = Statistic.find(params[:id])
    if @statistic.update(statistic_params)
      redirect_to @statistic
    else
      render :edit
    end
  end

  def destroy
    @statistic = Statistic.find(params[:id])
    game_id = @statistic.game_id
    @statistic.destroy
    redirect_to game_path(game_id)
  end

  private

  def statistic_params
    params.require(:statistic).permit(:player_id,:game_id,:points,:rebounds,:assists,:steals,:blocks,:turnovers,:id)
  end

end
