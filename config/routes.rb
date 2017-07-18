# == Route Map
#
#   Prefix Verb URI Pattern         Controller#Action
# pokemons GET  /pokemons(.:format) pokemons#index
#

Rails.application.routes.draw do

  root :controller => 'pokemons', :action => 'index'

  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  resources 'pokemons', only: [:index]

end
