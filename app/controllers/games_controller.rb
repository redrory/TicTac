class GamesController < ApplicationController
  def index
  end

  def create
    @game = Game.new(params[:game])
    @game.save

    redirect_to :back
  end

  def search
    #find correct session
    @current = Game.find_by_name(params[:search])
    @player = Player.find_by_name(params[:player_name])
  end

  def make_move
    @game = Game.find_by_name(params[:name])
    params[:loc].parameterize.underscore.to_sym
    @game.update_attributes(params[:loc].parameterize.underscore.to_sym  => params[:a1])

    #check_win(@game)

    redirect_to :back
  end

  def check_win(game)
    if [@game.a1, @game.a2, @game.a3].all? {|x|x == x}
      flash[:notice] = "You won"
    elsif [@game.b1, @game.b2, @game.b3].all? {|x|x == x}
      flash[:notice] = "You won"
    elsif [@game.c1, @game.c2, @game.c3].all? {|x|x == x}
      flash[:notice] = "You won"
    end
  end

  def show
  end
end
