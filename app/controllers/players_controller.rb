class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def show
    find_player
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.create(player_params)
    if @player.valid?
      redirect_to @player
    else
      render :new
    end
  end

  def edit
    find_player
  end

  def update
    find_player
    if @player.update(player_params)
      redirect_to @player
    else
      render :edit
    end
  end

  def destroy
    find_player
    @player.destroy
    redirect_to players_path
  end

  def analytics

  end

  def home

  end

  private

  def find_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:name, :position, :age, :team_id, :img_url)
  end

end
