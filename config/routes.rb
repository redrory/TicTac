Tictac::Application.routes.draw do

  get "games/index"

  get "games/search"

  get "games/show"

   root :to => 'games#index'

end
