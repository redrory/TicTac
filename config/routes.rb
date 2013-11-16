Tictac::Application.routes.draw do

  get "games/index"

  get "games/search"

  get "games/show"

  get "games/make_move"

  resources :games


  root :to => 'games#index'

end
