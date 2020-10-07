class PlayersController < ApplicationController

  def index
    @players = Player.all
  end
  
  def new
    @player = Player.new
  end

  def show
    @player = Player.find(params[:id])
  end
  
  def create
    player = Player.new(player_params)
    if player.save
      flash[:success] = "Player succesfully created"
      redirect_to :root
    else
      flash[:errors] = player.errors.full_messages
      redirect_back(fallback_location:"/")  #update of redirect_to :back, not working on rails 5
    end
  end

  def edit
    @player = Player.find(params[:id])
  end
  
  
  private

  def player_params
    params.require(:player).permit(:first_name, :last_name)
  end
    
  
end
