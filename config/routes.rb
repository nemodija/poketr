# == Route Map
#
#   Prefix Verb URI Pattern         Controller#Action
# pokemons GET  /pokemons(.:format) pokemons#index
#

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources 'pokemons', only: [:index]
end
