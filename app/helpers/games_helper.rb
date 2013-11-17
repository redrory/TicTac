module GamesHelper

  #toggle between correct user, to make move
  def selection(loc,spot)
    if loc.nil?
      link_to "[   ]", games_make_move_path(a1: "x", name: @current.name, loc: spot)
    else
      loc
    end
  end

  def o_selection(loc,spot)
    if loc.nil?
      link_to "[   ]", games_make_move_path(a1: "o", name: @current.name, loc: spot)
    else
      loc
    end
  end

  # Websockets by Faye, wasn't able to completely implement
  def broadcast(channel, &block)
    message = {:channel => channel, :data => capture(&block) }
    uri = URI.parse("http://localhost:9292/faye")
    NET::HTTP.post_form(uri, :message => message.to_json)
  end
end
