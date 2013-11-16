module GamesHelper

  def selection(loc,spot)
    if loc.nil?
      link_to "[ x_sel]", games_make_move_path(a1: "x", name: @current.name, loc: spot)
    else
      loc
    end
  end

  def o_selection(loc,spot)
    if loc.nil?
      link_to "[ o_sel]", games_make_move_path(a1: "o", name: @current.name, loc: spot)
    else
      loc
    end
  end

end
