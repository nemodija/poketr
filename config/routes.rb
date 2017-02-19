# == Route Map
#
#         Prefix Verb URI Pattern               Controller#Action
# pokemons_index GET  /pokemons/index(.:format) pokemons#index
#

Rails.application.routes.draw do
  get 'pokemons/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
