# == Route Map
#
#   Prefix Verb URI Pattern         Controller#Action
# pokemons GET  /pokemons(.:format) pokemons#index
#

Rails.application.routes.draw do

  root to: redirect('/pokemons')

  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  resources 'pokemons', only: [:index]
  resources 'pokemon_users', only: [:edit, :update, :create]

end
