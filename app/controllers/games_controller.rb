class GamesController < ApplicationController
  def index
  end

  def create
    @game = Game.new(params[:game])
    @game.save

    redirect_to :back
  end

  def search
    @current = Game.find_by_name(params[:search])
    @player = Player.find_by_name(params[:player_name])
    #render text: params[:search].inspect
  end

  def make_move
    @game = Game.find_by_name(params[:name])
    params[:loc].parameterize.underscore.to_sym
    @game.update_attributes(params[:loc].parameterize.underscore.to_sym  => params[:a1])

    redirect_to :back
  end

  def show
  end
end
