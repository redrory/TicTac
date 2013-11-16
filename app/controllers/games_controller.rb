class GamesController < ApplicationController
  def index
  end

  def search
    @current = Game.find_by_name(params[:search])
  end

  def show
  end
end
